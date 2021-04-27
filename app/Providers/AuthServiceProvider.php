<?php

namespace App\Providers;

use App\Models\User;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;
use App\Models\Group;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Models\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Gate::before( function (User $user){
            if($user->group->name === "Admins") {
                return true;
            }
        });

        Gate::define('group-user', function (User $user, Group $group) {

            return $user->group->name === "Users"? true : false;

        });

        Gate::define('group-admin', function (User $user, Group $group) {

            return $user->group->name === "Admins"? true : false;

        });
    }
}
