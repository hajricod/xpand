<?php

namespace App\Http\Livewire;

use App\Models\Job;
use Livewire\Component;
use Illuminate\Support\Str;
use Mediconesystems\LivewireDatatables\Column;
use Mediconesystems\LivewireDatatables\NumberColumn;
use Mediconesystems\LivewireDatatables\DataColumn;
use Mediconesystems\LivewireDatatables\Http\Livewire\LivewireDatatable;

class JobsDatatable extends LivewireDatatable
{
    // public function render()
    // {
    //     return view('livewire.jobs-datatable');
    // }

    public $model = Job::class;
}
