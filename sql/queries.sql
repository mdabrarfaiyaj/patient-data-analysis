-- =========================================================================  
-- Heart Disease Dataset — SQL Analysis Queries
-- Author: Md Abrar Faiyaj | Dataset: Heart Disease UCI | Date: 9th May,2026
-- =========================================================================

-- 1. Total patients by disease status
SELECT HeartDisease, COUNT(*) AS TotalPatients
FROM patients
GROUP BY HeartDisease;

-- 2. Average age by disease status
SELECT HeartDisease, ROUND(AVG(Age), 1) AS AvgAge
FROM patients
GROUP BY HeartDisease;

-- 3. Gender breakdown vs disease
SELECT Sex, HeartDisease, COUNT(*) AS Count
FROM patients
GROUP BY Sex, HeartDisease
ORDER BY Sex;

-- 4. High cholesterol patients (above 250)
SELECT COUNT(*) AS HighCholesterolPatients
FROM patients
WHERE Cholesterol > 250;

-- 5. Average max heart rate by disease
SELECT HeartDisease, ROUND(AVG(MaxHR), 1) AS AvgMaxHR
FROM patients
GROUP BY HeartDisease;

-- 6. Age group risk analysis
SELECT
    CASE
        WHEN Age < 40 THEN 'Under 40'
        WHEN Age BETWEEN 40 AND 55 THEN '40-55'
        ELSE 'Over 55'
    END AS AgeGroup,
    HeartDisease,
    COUNT(*) AS Count
FROM patients
GROUP BY AgeGroup, HeartDisease
ORDER BY AgeGroup;

-- 7. Exercise angina vs disease
SELECT ExerciseAngina, HeartDisease, COUNT(*) AS Count
FROM patients
GROUP BY ExerciseAngina, HeartDisease;

-- 8. Top 10 oldest patients with heart disease
SELECT Age, Sex, Cholesterol, MaxHR, HeartDisease
FROM patients
WHERE HeartDisease = 'Disease'
ORDER BY Age DESC
LIMIT 10;