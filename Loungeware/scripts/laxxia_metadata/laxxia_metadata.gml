microgame_register("laxxia_uniboarious", {
    config_version : 1,
    game_name : "Uniboarious",
    authors : {
        laxxia : "Laxxia"
    },
    prompt : "RIDE",
    init_room : laxxia_uniboarious_room,
    view_width : 1,
    view_height : 1,
    time_seconds : 8,
    music_track : katsaii_witchcraft_mu,
    music_loops : false,
    interpolation_on : true,
    cartridge_col_primary : [198, 119, 95],
    cartridge_col_secondary : [238, 199, 138],
    cartridge_label : katsaii_witchcraft_label,
    default_is_fail : true,
    supports_difficulty_scaling : true,
    credits : ["Laxxia"],
    date_added : {
        day : 7,
        month : "December",
        year : 2021
    },
    is_enabled : true,
    supports_html : true,
    show_on_website : true,
    description : ["Ride that boar my guy"],
    how_to_play : ["Succeed the QTE's to stay riding that boar my guy"],
});
