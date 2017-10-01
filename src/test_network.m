load('weights.mat');
total_correct = 0;
total_incorrect = 0;
for i = 0:9
    %disp(i);
    correct = 0;
    incorrect = 0;
    if i == 0
        n = size(test0);
        for j = 1:n
            row = double(test0(j,:))/255;
            input = row';
            op = test_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o);
            if op == 0
                correct = correct + 1;
                total_correct = total_correct + 1;
            else
                incorrect = incorrect + 1;
                total_incorrect = total_incorrect + 1;
            end
        end
    elseif i == 1
        n = size(test1);
        for j = 1:n
            row = double(test1(j,:))/255;
            input = row';
            op = test_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o);
            if op == 1
                correct = correct + 1;
                total_correct = total_correct + 1;
            else
                incorrect = incorrect + 1;
                total_incorrect = total_incorrect + 1;
            end
        end
    elseif i == 2
        n = size(test2);
        for j = 1:n
            row = double(test2(j,:))/255;
            input = row';
            op = test_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o);
            if op == 2
                correct = correct + 1;
                total_correct = total_correct + 1;
            else
                incorrect = incorrect + 1;
                total_incorrect = total_incorrect + 1;
            end
        end
    elseif i == 3
        n = size(test3);
        for j = 1:n
            row = double(test3(j,:))/255;
            input = row';
            op = test_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o);
            if op == 3
                correct = correct + 1;
                total_correct = total_correct + 1;
            else
                incorrect = incorrect + 1;
                total_incorrect = total_incorrect + 1;
            end
        end
    elseif i == 4
        n = size(test4);
        for j = 1:n
            row = double(test4(j,:))/255;
            input = row';
            op = test_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o);
            if op == 4
                correct = correct + 1;
                total_correct = total_correct + 1;
            else
                incorrect = incorrect + 1;
                total_incorrect = total_incorrect + 1;
            end
        end
    elseif i == 5
        n = size(test5);
        for j = 1:n
            row = double(test5(j,:))/255;
            input = row';
            op = test_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o);
            if op == 5
                correct = correct + 1;
                total_correct = total_correct + 1;
            else
                incorrect = incorrect + 1;
                total_incorrect = total_incorrect + 1;
            end
        end
    elseif i == 6
        n = size(test6);
        for j = 1:n
            row = double(test6(j,:))/255;
            input = row';
            op = test_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o);
            if op == 6
                correct = correct + 1;
                total_correct = total_correct + 1;
            else
                incorrect = incorrect + 1;
                total_incorrect = total_incorrect + 1;
            end
        end
    elseif i == 7
        n = size(test7);
        for j = 1:n
            row = double(test7(j,:))/255;
            input = row';
            op = test_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o);
            if op == 7
                correct = correct + 1;
                total_correct = total_correct + 1;
            else
                incorrect = incorrect + 1;
                total_incorrect = total_incorrect + 1;
            end
        end
    elseif i == 8
        n = size(test8);
        for j = 1:n
            row = double(test8(j,:))/255;
            input = row';
            op = test_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o);
            if op == 8
                correct = correct + 1;
                total_correct = total_correct + 1;
            else
                incorrect = incorrect + 1;
                total_incorrect = total_incorrect + 1;
            end
        end
    elseif i == 9
        n = size(test9);
        for j = 1:n
            row = double(test9(j,:))/255;
            input = row';
            op = test_for_digit(input,weight,final_weight,bias_weight_h,bias_weight_o);
            if op == 9
                correct = correct + 1;
                total_correct = total_correct + 1;
            else
                incorrect = incorrect + 1;
                total_incorrect = total_incorrect + 1;
            end
        end
    end
    fprintf('Classification Accuracy for digit %d = %f\n',i,(correct/(incorrect+correct))*100);
end
fprintf('Total Classification Accuracy = %f\n',(total_correct/(total_incorrect+total_correct))*100);