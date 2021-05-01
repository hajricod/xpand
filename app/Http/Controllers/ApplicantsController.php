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
        $this->validateApplicant();

        if($request->file()) {

            $this->parsePdf($request->file('resume'));

            // $file_name_uploaded = Storage::disk('local')->put('private/resumes', $request->file('resume'));

            // $file_name_uploaded = str_replace('private/resumes/', '', $file_name_uploaded);

            // $applicant->create([
            //     'user_id' => auth()->user()->id,
            //     'job_id'  => $request->job_id,
            //     'name'    => $request->name,
            //     'resume'  => $file_name_uploaded,
            //     'status'  => false
            // ]);

            // return back()->with('message', 'Your application was submitted, we wish you a good luck!');
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

    protected function  parsePdf($file) {

        $parser = new Parser();

        $pdf  = $parser->parseFile($file);

        $text = $pdf->getText();

        $text = strtolower($text);

        // loop through keywords
        
        $keyword = "html";

        $count_occ = substr_count($text, $keyword);

        $output = "";

        if($count_occ > 0) {

            for ($i=0; $i < $count_occ; $i++) { 

                $keyword_pos = strpos($text, $keyword);
    
                $new_text = substr($text, $keyword_pos);
    
                $dot_pos = strpos($new_text,".");
    
                $bet_text = substr($new_text, 0, $dot_pos+1);
    
                $output .= preg_replace("/\w*?".preg_quote($bet_text)."\w*/i", "<span style='background-color:yellow'>$0</span>", $text);
    
                $text = substr($text, $keyword_pos + strlen($keyword));
    
            }
        } else {
            $output = "Rejected!";
        }
        
        return $output;

    }
}
