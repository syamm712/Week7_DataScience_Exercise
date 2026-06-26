#1.Creating Dataframe

#Create vector for each Column

Name <- c("Aisha", "Bryan", "Chloe", "Daniel", "Emily")
Gender <- c("Female", "Male", "Female", "Male", "Female")
Age <- c(22, 23, 21, 24, 22)
Test_Score <- c(85, 78, 92, 65, 88)
Attendance <- c(90, 85, 95, 70, 88)

#Combine into data Frame

students <- data.frame(Name, Gender, Age, Test_Score, Attendance)

#View the data frame 

print("Original Students Data:")
print(students)

#=====================================
#2.Access and Subset Data

# Display Test_Score column using both df['Test_Score'] and df$Test_score.

#df['Test_Score']
print("\nTest_Score column using df['Test_Score']:")
print(students['Test_Score'])

#df$Test_score
print("\nTest_Score column using df$Test_Score:")
print(students$Test_Score)

# Display first 3 rows of the data frame

print("\nFirst 3 rows:")
print(students[1:3, ])

# Display students older than 22

print("\nStudents older than 22:")
print(students[students$Age > 22, ])

# Display female students with Test_Score greater than 80

print("\nFemale students with Test_Score > 80:")
print(students[students$Gender == 'Female' & students$Test_Score > 80, ])


#========================================
#3.ADD NEW DATA USING rbind()

# Create new row
  
new_student <- data.frame(
  Name = "Lina",
  Gender = "Male",
  Age = 20,
  Test_Score = 95,
  Attendance = 92
)

# Add to existing data frame using rbind()

students <- rbind(students, new_student)

print("\nStudents after adding Lina using rbind():")
print(students)


#========================================
#4.HANDLE MISSING VALUES (NA)


# Create the students_na data frame
  
students_na <- data.frame(
  Name = c("Aisha", "Bryan", "Chloe", "Daniel", "Emily"),
  Gender = c("Female", "Male", "Female", "Male", "Female"),
  Age = c(22, NA, 21, 24, 22),
  Test_Score = c(85, 78, NA, 65, 88),
  Attendance = c(90, 85, 95, NA, 88)
)

print("\nData with Missing Values (NA):")
print(students_na)

# Check for missing values in data frame

print("\nChecking for Missing Values (is.na()):")
print(is.na(students_na))

# Replace missing values in Age with mean age

students_na$Age[is.na(students_na$Age)] <- mean(students_na$Age, na.rm = TRUE)

# Replace missing values in Test_Score with median test score

students_na$Test_Score[is.na(students_na$Test_Score)] <- median(students_na$Test_Score, na.rm = TRUE)

# Replace missing values in Attendance with 0

students_na$Attendance[is.na(students_na$Attendance)] <- 0

print("\nData after Handling Missing Values:")
print(students_na)
