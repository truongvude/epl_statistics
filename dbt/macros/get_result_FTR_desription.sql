{#
    This macro returns the description of the FTR (Full Time Result) 
#}

{% macro get_result_ftr_description(FTR) -%}

    case {{ FTR }}  
        when "H" then "Home win"
        when "D" then "Draw"
        when "A" then "Away win"
    end

{%- endmacro %}