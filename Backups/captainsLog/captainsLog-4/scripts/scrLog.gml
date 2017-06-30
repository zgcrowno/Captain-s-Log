warning = argument0;

ds_list_add(global.util.log, warning);
if(ds_list_size(global.util.log) > 8) {
    ds_list_delete(global.util.log, ds_list_size(global.util.log) - 1);
}
