{#
    This macro returns the description of HTR (Half Time Result)
#}

{% macro get_result_htr_description(HTR) -%}

    case {{ HTR }}  
        when "H" then "Home win"
        when "D" then "Draw"
        when "A" then "Away win"
    end

{%- endmacro %}