{% macro log_task_event(event_name='model_completed') %}
    {% set sql %}
        insert into `dbt_test`.`dbt_models`.`task_log`
            (id, job_run_id, task_id, event, timestamp)
        select
            coalesce(max(id), 0) + 1 as id,
            '{{ invocation_id }}' as job_run_id,
            '{{ this.identifier }}' as task_id,
            '{{ event_name }}' as event,
            current_timestamp() as timestamp
        from `dbt_test`.`dbt_models`.`task_log`
    {% endset %}
    {{ return(sql) }}
{% endmacro %}
