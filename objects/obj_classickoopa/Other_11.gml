/// @description Turn into a shell

//Create shell
with (instance_create(x, y, obj_shell)) {

    sprite_index = spr_shell_classic;
    koopainside = -1;
}

//Destroy
instance_destroy();

