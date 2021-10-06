USE library;

-- В моей таблице поле "Address" не может быть Null, поэтому на него проверки нет.
UPDATE deliveries
SET address = "Нет сведений"
WHERE address = "";
