function [weight,final_weight,bias_weight_h,bias_weight_o] = train_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o,digit)
    coeff = 0.2;
    bias = 1;
    no_of_iterations = 30;
    desired_output = zeros(1,10);
    out = zeros(1,10);    
    if digit == 0
        digit = 10;
    end
    desired_output(digit) = 1;
    
    for i = 1:no_of_iterations
        delta3 = zeros(1,10);
        delta2 = zeros(1,784);
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
        for j = 1:10
            delta3(j) = out(j)*(1-out(j))*(desired_output(j) - out(j));
        end
        for j = 1:784
            prod = 0;
            for k = 1:10
                prod = prod + delta3(k)*final_weight(k,j);
            end
            delta2(j) = hidden_layer_op(j)*(1-hidden_layer_op(j))*prod;
        end
        for j = 1:10
            for k = 1:784
                final_weight(j,k) = final_weight(j,k) + coeff*hidden_layer_op(k)*delta3(j);
            end
        end
        for j = 1:784
            for k = 1:784
                weight(j,k) = weight(j,k) + coeff*input(k,1)*delta2(j);
            end
        end
        for j = 1:784
            bias_weight_h(j,1) = bias_weight_h(j,1) + coeff*bias_weight_h(j,1)*delta2(j);
        end
        for j = 1:10
            bias_weight_o(j,1) = bias_weight_o(j,1) + coeff*bias_weight_o(j,1)*delta3(j);
        end
    end
end