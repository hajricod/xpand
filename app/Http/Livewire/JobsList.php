<?php

namespace App\Http\Livewire;

use App\Models\Job;
use Livewire\Component;
use Livewire\WithPagination;


class JobsList extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $search = '';

    public function render()
    {
        return view('livewire.jobs-list',
        [
            'jobs' => Job::query()
            ->where('title', 'like', '%'.$this->search.'%')
            ->paginate(5),
        ]);
    }
}
