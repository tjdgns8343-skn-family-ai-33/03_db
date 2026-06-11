## HOMEWORK
# db script 수업자료에서 확인
# 물리모델 이미지에서 EMP, 사원 번호 등등 참고

# Q5
#재직 중이고 휴대폰 마지막 자리가 2인 직원 중 입사일이 가장 최근인 직원 3명의 사원번호, 직원명, 전화번호, 입사일, 퇴직여부를 출력하세요.
select
    EMP_ID,
    EMP_NAME,
    PHONE,
    HIRE_DATE,
    ENT_YN
from
    employee
where
    ENT_YN = 'N' and
    PHONE like '%2'
order by
    HIRE_DATE desc
limit 0,3;


# Q6
# - 재직 중인 ‘대리’들의 직원명, 직급명, 급여, 사원번호, 이메일, 전화번호, 입사일을 출력하세요.
# - 단, 급여를 기준으로 내림차순 출력하세요.

select
    e.EMP_NAME as 직원명,
    j.JOB_NAME as 직급명,
    e.SALARY as 급여,
    e.EMP_ID as 사원번호,
    e.EMAIL as 이메일,
    e.PHONE as 전화번호,
    e.ENT_DATE as 입사일
from
    employee e
left join
    job j
on e.JOB_CODE = j.JOB_CODE
where
    e.ENT_YN = 'N'
and
    j.JOB_NAME = '대리'
order by
    e.SALARY desc;


