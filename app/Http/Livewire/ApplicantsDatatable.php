<?php

namespace App\Http\Livewire;
use App\Models\Applicant;
use Livewire\Component;
use Livewire\WithPagination;

class ApplicantsDatatable extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public $search = '';

    public function clear() {
        $this->search = '';
    }

    public $perPage = 10;
    public $sortField = "name";
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
        return view('livewire.applicants-datatable', [
            'applicants' => Applicant::query()
            ->where('name', 'like', '%'.$this->search.'%')
            ->orderBy($this->sortField, $this->sortAsc ? 'asc' : 'desc')
            ->paginate($this->perPage),
        ]);
    }
}
