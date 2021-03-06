
package ${base_pkg}.domain;

import java.io.Serializable;
import java.sql.Timestamp;
import ${base_pkg}.domain.enums.DelFlag;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

<#include "/basic/author.include"/>
public abstract class BaseDomain implements Serializable {

    private Long id;
    private DelFlag delFlag;
    private Timestamp createdTime;
    private Timestamp updatedTime;
    private String createdBy;
    private String updatedBy;
    private Long version;

    public Long getVersion() {
        return this.version;
    }

    public void setVersion(Long version) {
        this.version = version;
    }
    /**
     * get id value
     * @return the id
     */
    public Long getId() {
        return id;
    }

    /**
     * set id value
     * @param id the id to set
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * get delFlag value
     * @return the delFlag
     */
    public DelFlag getDelFlag() {
        return delFlag;
    }

    /**
     * set delFlag value
     * @param delFlag the delFlag to set
     */
    public void setDelFlag(DelFlag delFlag) {
        this.delFlag = delFlag;
    }

    public Timestamp getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Timestamp createdTime) {
        this.createdTime = createdTime;
    }

    public Timestamp getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(Timestamp updatedTime) {
        this.updatedTime = updatedTime;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getUpdatedBy() {
        return updatedBy;
    }

    public void setUpdatedBy(String updatedBy) {
        this.updatedBy = updatedBy;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }

        if (o == null || getClass() != o.getClass()) {
            return false;
        }

        BaseDomain that = (BaseDomain) o;

        return new EqualsBuilder()
            .append(id, that.id)
            .isEquals();
    }

    @Override
    public int hashCode() {
        return new HashCodeBuilder(17, 37)
        .append(id)
        .toHashCode();
    }

    /*
     * (non-Javadoc)
     * 
     * @see java.lang.Object#toString()
     */
    @Override
    public abstract String toString();

}
