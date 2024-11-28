L_values = [20, 12, 15, 12];
P_values = [10, 10, 5, 12];

for i = 1:length(L_values)
    L = L_values(i);
    P = P_values(i);

    % Bagian 1
    x = zeros(1, L); % Inisialisasi array x
    for n = 1:L
        if n <= P
            x(n) = 1;
        else
            x(n) = 0;
        end
    end

    t = 1:L;

    figure;
    subplot(3, 1, 1);
    stem(t, x);
    % title(['x dengan L = ', num2str(L), ' dan P = ', num2str(P)]);

    % Bagian 2
    v = zeros(1, L); % Inisialisasi array v
    for n = 1:L
        if n <= P
            v(n) = 1;
        else
            v(n) = 0;
        end
    end

    subplot(3, 1, 2);
    stem(t, v);
    % title(['v dengan L = ', num2str(L), ' dan P = ', num2str(P)]);

    % Konvolusi x dan v
    conv_result = conv(x, v);
    subplot(3, 1, 3);
    stem(conv_result);
    % title(['Konvolusi x dan v untuk L = ', num2str(L), ' dan P = ', num2str(P)]);
end


