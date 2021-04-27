<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Group;
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
                "description" => "Add, or modify jobs in this section "
            ],
            [
                "title" => "Applicants",
                "description" => "Add, or modify jobs in this section "
            ]
        ];
        
        return view('admin.dashboard.index', compact('sections'));
    }
}
