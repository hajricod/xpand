<?php

namespace App\Http\Controllers;

use App\Models\Applicant;
use App\Models\Job;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Smalot\PdfParser\Document;
use Smalot\PdfParser\Element;
use Smalot\PdfParser\Parser;

class ApplicantsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $job = Job::find($request->id);

        return view('applicants.create', compact('job'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Applicant $applicant)
    {
        $job = Job::find($request->job_id);

        $keywords = $this->getKeywords($job->keywords);

        $this->validateApplicant();

        if($request->file()) {

            $result = $this->analyzePDF($request->file('resume'), $keywords);

            $file_name_uploaded = Storage::disk('local')->put('private/resumes', $request->file('resume'));

            $file_name_uploaded = str_replace('private/resumes/', '', $file_name_uploaded);

            $applicant->create([
                'user_id'        => auth()->user()->id,
                'job_id'         => $request->job_id,
                'name'           => $request->name,
                'resume'         => $file_name_uploaded,
                'resume_text'    => $result["resume"],
                'keywords_score' => json_encode($result["keywords"]),
                'status'         => $result["status"]
            ]);

            return back()->with('message', 'Your application was submitted, we wish you a good luck!');
        }


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Applicant  $applicant
     * @return \Illuminate\Http\Response
     */
    public function show(Applicant $applicant)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Applicant  $applicant
     * @return \Illuminate\Http\Response
     */
    public function edit(Applicant $applicant)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Applicant  $applicant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Applicant $applicant)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Applicant  $applicant
     * @return \Illuminate\Http\Response
     */
    public function destroy(Applicant $applicant)
    {
        //
    }

    function validateApplicant() {

        return request()->validate([
            'name'   => 'required',
            'resume' => 'required|mimes:pdf|max:2000',
        ]);
    }

    protected function  analyzePDF($file, $keywords) {

        $parser = new Parser();

        $pdf  = $parser->parseFile($file);

        $text = $pdf->getText();

        $text_lowcase = strtolower($text);

        $output = [
            "resume"   => "",
            "status"   => false,
            "keywords" => []
        ];

        $text = $text_lowcase;

        $curr_text = "";

        foreach($keywords as $keyword) {

            $curr_text == "" ? $curr_text = $text : $curr_text = $output["resume"];

            $keyword = strtolower($keyword);

            $count_occ = substr_count($curr_text, $keyword);

            $output["keywords"][$keyword] = $count_occ;

            if($count_occ > 0) {

                $output["status"] = true;

                for ($i=0; $i < $count_occ; $i++) { 

                    $keyword_pos = strpos($curr_text, $keyword);
        
                    $new_text    = substr($curr_text, $keyword_pos);
        
                    $dot_pos     = strpos($new_text,".");
        
                    $bet_text    = substr($new_text, 0, $dot_pos+1);

                    $curr_text   = str_replace($bet_text, "<span style='background-color:yellow'>".$bet_text."</span>", $curr_text);
        
                    $text        = substr($text, $keyword_pos + strlen($keyword));
        
                }

                $output["resume"] = $curr_text;

            }

        }
        
        return $output;

    }

    protected function getKeywords($keywords) {

        $keywords_arr = explode(",", $keywords);

        return $keywords_arr;
    }
}
