<?php

namespace App\Http\Livewire;

use App\Models\Job;
use Livewire\Component;

use Livewire\WithPagination;

class ShowJobs extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $search = '';

    // public function updatingSearch()
    // {
    //     $this->resetPage();
    // }

    public function clear() {
        $this->search = '';
    }

    public $perPage = 10;
    public $sortField = "title";
    public $sortAsc = true;

    public function sortBy($field) {
        if($this->sortField == $field) {
            $this->sortAsc = !$this->sortAsc;
        } else {
            $this->sortAsc = true;
        }

        $this->sortField = $field;
    }

    public function render()
    {
        return view('livewire.show-jobs', [
            'jobs' => Job::query()
            ->where('title', 'like', '%'.$this->search.'%')
            ->orderBy($this->sortField, $this->sortAsc ? 'asc' : 'desc')
            ->paginate($this->perPage),
        ]);
    }
}
