<div>
    <div class="row mb-3 border-top pt-3">
        <div class="col form-inline">
            <input type="text" wire:model="search" class="form-control w-auto" placeholder="Search">
            <button wire:click="clear" class="btn btn-light mx-lg-2">Clear</button>
        </div>

        <div class="col d-flex justify-content-end">
            <select wire:model="perPage" class="form-control w-auto" name="perPage" id="perPage">
                <option value="10">10</option>
                <option value="15">15</option>
                <option value="25">25</option>
            </select>
        </div>
    </div>
    
    <div class="table-responsive-sm">
        <table class="table mb-0 table-hover">
            <thead>
            <tr>
                <th>
                    <a wire:click.prevent="sortBy('title')" role="button" href="#">
                        Title
                        @include('parts._sort-icon', ['field' => 'title'])
                    </a>
                </th>
                <th>
                    <a wire:click.prevent="sortBy('from')" role="button" href="#">
                        From
                        @include('parts._sort-icon', ['field' => 'from'])
                    </a>
                </th>
                <th>
                    <a wire:click.prevent="sortBy('to')" role="button" href="#">
                        To
                        @include('parts._sort-icon', ['field' => 'to'])
                    </a>
                </th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
                @foreach ($jobs as $job)
                    <tr scope="row">
                        <td>{{$job->title}}</td>
                        <td>{{$job->from->format('m/d/Y')}}</td> 
                        <td>{{$job->to->format('m/d/Y')}}</td> 
                        <td>
                            <div class="d-flex justify-content-start ">
                            <form action="/admin/jobs/{{$job->id}}" method="POST">
                                @csrf
                                @method('delete')
                                <button type="submit" class="btn p-0 px-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square text-danger" viewBox="0 0 16 16">
                                        <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
                                        <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
                                    </svg>
                                </button>
                            </form>
                            <a href="/admin/jobs/{{$job->id}}" class="btn p-0 px-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye text-primary" viewBox="0 0 16 16">
                                    <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                                    <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                                </svg>
                            </a>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <hr class="mt-0">
    <div class="d-flex justify-content-between">
        <div>{{ $jobs->links() }}</div>
        <div>
            Showing {{$jobs->firstItem()}} to {{$jobs->lastItem()}} out of {{$jobs->total()}}
        </div>
    </div>
</div>
