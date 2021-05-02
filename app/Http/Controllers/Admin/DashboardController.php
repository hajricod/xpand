<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Applicant;
use App\Models\Group;
use App\Models\Job;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Gate;

class DashboardController extends Controller
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

        $sections = [
            [
                "title" => "Jobs",
                "description" => "Add, or modify jobs in this section ",
                "url" => "/admin/jobs",
                "latest" => Job::all()->last(),
                "count" => count(Job::all()),
            ],
            [
                "title" => "Applicants",
                "description" => "Check jobs applications in this section",
                "url" => "/admin/applicants",
                "latest" => Applicant::all()->last(),
                "count" => count(Applicant::all())
            ]
        ];
        
        return view('admin.dashboard.index', compact('sections'));
    }
}
