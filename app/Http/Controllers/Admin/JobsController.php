<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Job;
use Illuminate\Http\Request;
use App\Models\Group;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Gate;

class JobsController extends Controller
{
    public function isAuthorized() {

        $group = Group::find(Auth::user()->group_id);

        if (Gate::denies('group-admin', $group)) {

            abort(403);
        }
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->isAuthorized();

        return view('admin.jobs.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->isAuthorized();

        return view('admin.jobs.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Job $job)
    {
        $this->isAuthorized();

        $job->create($this->validateJob());

        return redirect('/admin/jobs')->with('message', __('Job was added successfully!'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Job  $job
     * @return \Illuminate\Http\Response
     */
    public function show(Job $job)
    {
        $this->isAuthorized();

        return view('admin.jobs.show', compact('job'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Job  $job
     * @return \Illuminate\Http\Response
     */
    public function edit(Job $job)
    {
        $this->isAuthorized();

        return view('admin.jobs.edit', compact('job'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Job  $job
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Job $job)
    {
        $this->isAuthorized();

        $job->update($this->validateJob());

        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Job  $job
     * @return \Illuminate\Http\Response
     */
    public function destroy(Job $job)
    {
        $this->isAuthorized();

        $job->delete();

        return back();
    }

    protected function validateJob()
    {

        return request()->validate([
            'title'        => 'required',
            'description'  => 'required',
            'keywords'     => 'required',
            'from'         => 'required|date|before:to',
            'to'           => 'required|date|after:from',
        ]);

    }
}
