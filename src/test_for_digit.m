function op = test_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o)
    out = zeros(1,10);
    bias = 1;
    hidden_layer_op = zeros(1,784);
    for j = 1:784
        sum = 0;
        for k = 1:784
            sum = sum + input(k,1)*weight(j,k);
        end
        sum = sum + bias*bias_weight_h(j,1);
        h = 1/(1+exp(-sum));
        hidden_layer_op(j) = h;
    end
    for j = 1:10
        sum = 0;
        for k = 1:784
            sum = sum + hidden_layer_op(k)*final_weight(j,k);
        end
        sum = sum + bias*bias_weight_o(j,1);
        o = 1/(1+exp(-sum));
        out(j) = o;
    end
    [max_val,pos] = max(out);
    if pos == 10
        op = 0;
    else
        op = pos;
    end
end