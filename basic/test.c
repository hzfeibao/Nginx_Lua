
#include<stdio.h>
#include<lua.h>
#include<lualib.h>
#include<lauxlib.h>

int main(){
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    if(luaL_loadfile(L,"test.lua") || lua_pcall(L, 0, 0, 0)){
	printf("error: %s\n", lua_tostring(L, -1));
	return -1;
    }
    lua_getglobal(L,"width");
    lua_getglobal(L,"length");
    printf("width= %d\n", lua_tointeger(L,-2));
    printf("length= %d\n", lua_tointeger(L,-1));
    lua_close(L);
    return 0;
}
