<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class FilesController extends Controller
{
    public function downloadFile($dir, $file)
    {

        return \Storage::disk('private')->download("$dir/$file");
    }
}
