function eval(exp)
    if self_evaluating(exp)
        return exp
    else
        error("Unknown expression type -- EVAL", exp)
    end
end

function self_evaluating(exp)
    return isnumeric(exp) || isstring(exp)
end


function metaEv_repl()
    prompt_for_input()
    input = readline()
    output = eval(parse(input))
    show(output)
    metaEv_repl()
end

function prompt_for_input()
    print(">> ")
end

function print(object)
    write(stdout, object)
    println("\n") 
end

metaEv_repl()