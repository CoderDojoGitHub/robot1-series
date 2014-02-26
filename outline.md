# Robot1 Series

Build a [self driving 2 wheeled balancing robot](http://www.youtube.com/watch?v=V-_uxpX9aFQ&feature=youtu.be) in 4 weeks.

## Outline

This series will span 4 lessons (days) and will focus on honing these skills while building a robot:

1. teamwork
1. self-teaching
1. problem-solving
1. feature driven development
1. electrical engineering
1. software engineering
1. test driven design
1. mentorship

### Lesson 1: Planning and Learning

Introduce the robot through the youtube video and then whiteboard the robot, it's features and platform. Do this as a interactive brainstorming/whiteboarding session, get everyone involved. The result might look something like this:

![platform and features](http://cl.ly/image/3R2Q0o1z241h/platform%20and%20features.jpg)

Once distinct projects have been formed divide into 2 teams each with 2 groups. Each team will have a software group and a hardware group and each group will have a mentor. Teams will each build their own robot.

The hardware group will focus on learning how to solder, read schematics, print from the 3d printer, and then combine these skills to assemble the initial hardware platform.

Meanwhile the software groups will be working with pre-built platforms in order to start writing and testing the code that will run the robots. They will learn how to read and write the code the platform supports and they will start using pull requests and code review to help them work as a team with their hardware groups.

Neither the first feature nor platform needs to be completed at the end of lesson 1, but all groups should have a good understanding of how to complete their first feature. They should leave lesson 1 comfortable with their tools, with each other, and with the process of development.

### Lesson 2: Feature Driven Development

Start with 15 minutes of review from lesson 1 followed by a 15 minutes of brainstorming for the day. Maintain the same groups and teams and ensure the hardware and software teams are communicating clearly their ideas and requirements (API's).

Split up into groups and complete the first feature, basic programmed forward and backward movement. The robot won't be standing or remote controlled yet, the only requirement is that it be able to move forward a few inches and backwards a few inches when it's software is loaded onto it's hardware.

If the teams finish early the hardware groups should start mentoring the software groups in soldering and reading schematics and the software teams should start mentoring the hardware teams in reading and writing code and software development workflows.

### Lesson 3: Standup

In lesson 3 groups switch roles and develop the next feature, making the robot auto balance on 2 wheels. The hardware groups switch to software and vice versa. Groups will have to mentor each other in their developed skills. Teaching via pull requests and code review may be an asset.

The hardware groups will be adding a gyro/accelerometer to the platform their team built in lessons 1 and 2.

Meanwhile the software groups will be learning how to interpret the data from the new sensors.

Together the hardware and software groups will write the algorithm that takes the interpreted data and uses it to control the motors and make the robot stand on it's own.

If teams complete this feature early they can continue with the next feature, adding a servo controlled arm to move the robot from a lying down position to the standing up position.

### Lesson 4: Autonomy

Lesson 4 starts with a 30 minute brainstorming session for the last feature, a self driving robot that avoids obstacles.

Next hardware and software groups will work together for 60 minutes to install the sonar and get the input from the sonar into their main program loop.

At this point individuals are free to work on their own or in groups to write the software that will ultimately allow the robot to drive itself free from remote control.

At the end of the lesson each team should have a self driving 2 wheeled balancing robot! This deserves a pizza party and some dancing robots!

![dancing robot](http://cl.ly/image/0f31053B3C1q/dancing-robot.gif)

## Conclusion

During the planning phase the mentors will be collecting libraries and snippets of code, teaching techniques and problem solving skills, and collect those in this repository.

API docs, software libraries, schematics, and other supporting materials should find their way into this repository. No final application code should be in here though, we want to avoid this being a copy and paste project.
