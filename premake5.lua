project "flecs"
    kind "StaticLib"
    language "C"
    staticruntime "on"
    flecs_args = { "-Dflecs_STATIC" }
    flecs_args = { "Dflecs_EXPORTS" }


    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    includedirs
    {
        "include"
    }

    files
    {
        "src/addons/coredoc.c",
        "src/addons/doc.c",
        "src/addons/expr/deserialize.c",
        "src/addons/expr/serialize.c",
        "src/addons/expr/strutil.c",
        "src/addons/expr/vars.c",
        "src/addons/http.c",
        "src/addons/journal.c",
        "src/addons/json/deserialize.c",
        "src/addons/json/serialize.c",
        "src/addons/json/serialize_type_info.c",
        "src/addons/json/json.c",
        "src/addons/log.c",
        "src/addons/meta/api.c",
        "src/addons/meta/meta.c",
        "src/addons/meta/serialized.c",
        "src/addons/meta/cursor.c",
        "src/addons/meta_c.c",
        "src/addons/module.c",
        "src/addons/monitor.c",
        "src/addons/os_api_impl/os_api_impl.c",
        "src/addons/parser.c",
        "src/addons/pipeline/pipeline.c",
        "src/addons/pipeline/worker.c",
        "src/addons/plecs.c",
        "src/addons/rest.c",
        "src/addons/rules.c",
        "src/addons/snapshot.c",
        "src/addons/stats.c",
        "src/addons/system/system.c",
        "src/addons/timer.c",
        "src/addons/units.c",
        "src/datastructures/allocator.c",
        "src/datastructures/bitset.c",
        "src/datastructures/block_allocator.c",
        "src/datastructures/hash.c",
        "src/datastructures/hashmap.c",
        "src/datastructures/map.c",
        "src/datastructures/stack_allocator.c",
        "src/datastructures/name_index.c",
        "src/datastructures/qsort.c",
        "src/datastructures/sparse.c",
        "src/datastructures/strbuf.c",
        "src/datastructures/switch_list.c",
        "src/datastructures/vec.c",
        "src/datastructures/vector.c",
        "src/bootstrap.c",
        "src/entity.c",
        "src/entity_filter.c",
        "src/filter.c",
        "src/hierarchy.c",
        "src/id_record.c",
        "src/iter.c",
        "src/misc.c",
        "src/observable.c",
        "src/observer.c",
        "src/os_api.c",
        "src/poly.c",
        "src/query.c",
        "src/stage.c",
        "src/table_cache.c",
        "src/table_graph.c",
        "src/table.c",
        "src/search.c",
        "src/value.c",
        "src/world.c",
    }

    filter "system:windows"
        systemversion "latest"
        buildoptions { "-lWs2_32" }
    
    filter "system:linux"
        pic "On"
        systemversion "latest"
    
    
    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"
        
    filter "configurations:Release"
        runtime "Release"
        optimize "on"
        
    filter "configurations:Dist"
        runtime "Release"
        optimize "on"
        symbols "off"
