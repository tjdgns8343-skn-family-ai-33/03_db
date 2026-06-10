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
