package org.eclipse.jetty.demo;

import java.io.Serializable;
import java.time.LocalDate;

public class Milestone implements Serializable {
    protected final int id;
    protected String milestoneName;
    protected String description;
    protected LocalDate completionDate;
    protected String personName;

    private static int lastMilestoneCreated = 0;

    public Milestone() {
        this.id = ++lastMilestoneCreated;
        this.milestoneName = "";
        this.description = "";
        this.completionDate = getNow();
        this.personName = "";
    }

    public Milestone(String milestoneName, String description, LocalDate completionDate, String personName) {
        this.id = ++lastMilestoneCreated;
        this.milestoneName = milestoneName;
        this.description = description;
        this.completionDate = completionDate;
        this.personName = personName;
    }

    public Milestone(int id, String milestoneName, String description, LocalDate completionDate, String personName) {
        this.id = id;
        this.milestoneName = milestoneName;
        this.description = description;
        this.completionDate = completionDate;
        this.personName = personName;
        if (id > Milestone.lastMilestoneCreated)
            Milestone.lastMilestoneCreated = id;
    }

    public int getId() {
        return this.id;
    }

    public String getMilestoneName() {
        return this.milestoneName;
    }

    public void setMilestoneName(String milestoneName) {
        this.milestoneName = milestoneName;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDate getCompletionDate() {
        return this.completionDate;
    }

    public LocalDate getNow() {
        LocalDate now = LocalDate.now();
        return now;
    }
}
