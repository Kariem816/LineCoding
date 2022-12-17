function [t, s] = uprz(signal, bitrate)
    T = length(signal) / bitrate; % total time of signal
    res = 200; % no. of points in each bit
    N = res * length(signal); % total number of points
    dt = T / N; % time step = total time / total number of points
    t = 0:dt:T - dt; % create time array

    for i = 0:length(signal) - 1% loop for all bits

        if signal(i + 1) == 1% if this bit = 1
            s ((i * res) + 1:(i + 0.5) * res) = 1; % first half of bit signal = 1
            s (((i + 0.5) * res) + 1:(i + 1) * res) = 0; % second half of bit signal = 0
        else % if this bit != 1 (= 0)
            s ((i * res) + 1:(i + 1) * res) = 0; % all points of bit signal = 0
        end

    end

endfunction
