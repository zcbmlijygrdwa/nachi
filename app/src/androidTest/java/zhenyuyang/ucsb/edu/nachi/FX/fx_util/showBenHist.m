threshold = 0.5;
BenefitRatioHistory(BenefitRatioHistory==0) = [];
minBR = min(BenefitRatioHistory)
BenefitRatioLessThanThreshold = BenefitRatioHistory(BenefitRatioHistory<threshold);
figure,histogram(BenefitRatioHistory,[0:0.001:1.01]);
title('BenefitRatioHistory')

tradingDurationHistory(tradingDurationHistory==0) = [];
if(sellHolds~=0||buyHolds~=0)
    tradingDurationHistory = [tradingDurationHistory (frameCount - tradingStart)];
end
figure,histogram(tradingDurationHistory,[0:10:max(tradingDurationHistory)]);
tradingDurationHistoryTop = sort(tradingDurationHistory);
tradingDurationHistoryTopHours = tradingDurationHistoryTop(end-5:end)/3600
% figure,histogram(tradingDurationHistory,[0:100:50000]);
% title('tradingDurationHistory')