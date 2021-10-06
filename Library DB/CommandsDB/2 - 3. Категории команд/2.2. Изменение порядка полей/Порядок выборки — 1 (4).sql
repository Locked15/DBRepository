USE library;

-- Простая выборка в произвольном порядке не должна сказаться на производительности:
SELECT name_delivery, phone, inn, address, code_delivery FROM deliveries;
