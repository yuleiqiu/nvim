return {
    "HakonHarnes/img-clip.nvim",
    keys = {
        {
            "<leader>p",
            "<cmd>PasteImage<cr>",
            desc = "[img-clip] save image to disk and paste image code in current file."
        },
    },
    opts = {
        default = {
            debug = false,
            insert_mode_after_paste = true,
            template = "$FILE_PATH",
            url_encode_path = true,
            use_cursor_in_template = true,

            dir_path = function()
                return "figures/"
            end,
            file_name = "%Y-%m-%d-%H-%M-%S",

            use_absolute_path = false,
            relative_to_current_file = true,

            prompt_for_file_name = true,
            show_dir_path_in_prompt = true,

            embed_image_as_base64 = false,
            max_base64_size = 10,

            drag_and_drop = {
                enabled = true,
                insert_mode = true,
                copy_images = true,
                download_images = true,
            },
        },

        html = {
            template = '<img src="$FILE_PATH" alt="$CURSOR">',
        },

        markdown = {
            url_encode_path = true,
            template = "![$CURSOR]($FILE_PATH)",
        },

        tex = {
            template = [[
\begin{figure}[h]
    \centering
    \includegraphics[width=0.8\textwidth]{$FILE_PATH}
    \caption{$CURSOR}
    \label{fig:$LABEL}
\end{figure}
]],
        },
    },
}
