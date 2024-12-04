Return-Path: <open-iscsi+bncBDVIJONZ3YDRBTMVYK5AMGQEMKIOQ4A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 1638B9E4053
	for <lists+open-iscsi@lfdr.de>; Wed,  4 Dec 2024 18:01:05 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id e9e14a558f8ab-3a7e4bfae54sf58763475ab.0
        for <lists+open-iscsi@lfdr.de>; Wed, 04 Dec 2024 09:01:05 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1733331663; cv=pass;
        d=google.com; s=arc-20240605;
        b=Qg0+mDd6wlYKhUUT2NxbYxOXiwyiAlece/O2eyODnPnffEkH1UhVMtW048aVvbx87a
         w8JHR1dgn2p3CFLPwA51eVT5yQ9HJiGfLvfCwvKkPrumohlX1R5PbkT6eQAENZfy4yiE
         6Q3uwXqHgTjUSf7q4TYVpBID/Iv3OORdN4/atQpHNfAGKmeJSwyfpQSWIRuD7FAh/UjF
         KqdD2EEY2bDc+Y9Q3zIq+Dm3YI1itgVuju2UFMAxDPu7yWDQ/rYY4/oJgAZ3TR92UAsR
         WdEgbassVeLSNGlB57OPx30n2+zrZuxfBi7rfL4HbqI4U3jnTdZeVeP3dHBFJQ39OJ59
         SXBQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version
         :content-transfer-encoding:date:references:message-id:organization
         :in-reply-to:from:subject:cc:to:dkim-signature;
        bh=Kg++LXEsGU0GdfOd3z3fSXOVy1L7xsJPit5dsqchg+A=;
        fh=CxLRZ3u9PRF94/C2Iu5KEM3nApDQJ+Tehgy6JxwPc7w=;
        b=fPwZvB5nILhjiIowm0880zSbXYkH+FwdDBi5HJuiYdS8yqCd5fzpT4cIc+HRh4QZKH
         LNOKxeRkO0ImkKmcHmfgrAbyMlAFOnKJhGgamDnD/5JM6+RTkxu1VaYZuOUsVDcixyZ8
         Kv0wSZaU6nhBLnOJyYhQ9ouxA3Bm8DcE5jR5aE/iWkogmLSgLy4R6VGqbBnzObsJYqtq
         mOw8DiOzCBG6X2G1Wm5em5n0dzW0cqjB3+3PE1MKEcargm9ecYi9AVTB0O0cVjQIvcQT
         liqlcNooi/nAOthJ2Urlfw/F5aeeKoH2bQlLn8N5yxh2vhCPXLEiyHPjncIky97ePkym
         XoWg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=C6BN4v2r;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=DElm6ho4;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1733331663; x=1733936463; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:content-transfer-encoding:date
         :references:message-id:organization:in-reply-to:from:subject:cc:to
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Kg++LXEsGU0GdfOd3z3fSXOVy1L7xsJPit5dsqchg+A=;
        b=cnM1puwiPgozaZ6uJ9H0XTLzrGouJpWAIu/ZhkVwwp56J0LoZUrnM+u41ArNqpnmsY
         3SfZDwaOb1Mx9jFdMLMeCnxb+dK2yQfDTXpCLtRRquzu4zQBQXXyvlVZSU9I56U/iQzT
         okhHvHEogMDXg/74hutLimZjTORHF+B42ja4nq7ofhWDMkn1KQ0sNz8ftor+K0oECeqg
         HqjrrG7RRTHLr9Om+Wa8L1fHNvHjIbK2LWzgOJn+DLUJI+HZb3xjRdT0YYg3ZcC0a/G6
         Gp3lvC1OckR85PAxZ7dLeIEKtwXH0up5MclCTzVXVxvCYESLfv1w4RDmFbFCqTNaZXwX
         1mWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733331663; x=1733936463;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:date:references:message-id:organization
         :in-reply-to:from:subject:cc:to:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Kg++LXEsGU0GdfOd3z3fSXOVy1L7xsJPit5dsqchg+A=;
        b=hQA85kLDxpJ/v/bKkKlhty+fAj7lILugbBUpmrV2Ps2JRLbVNj5qhtXmFYXl/9OceX
         BGc0hg7nk7tb90k4a6yM38ddWdwsac5+dBKJ3GmkFMKbKFXot3CWHRd7vhDxs4slOI5m
         4lPSYBnII88j/HaB211YRmQptgdA8E9zhqm/MhmuirX3hsHKY0+b2mPkVHHg5kcM5F+8
         3ZO8vbgjoLHLSNUSWCrQR/j/fd4qRFiJ9G39NQrUcDCkftFnBeGNZgDmFQHqO8GNWAe7
         Yry5nssMKM+kf0ULHk2g4oz2esVkIZ5hMtD/5Juox446lYg04Dbxqs9eyoBx5yNyDG6X
         W7qg==
X-Forwarded-Encrypted: i=3; AJvYcCXZP7KuEhG40kBZ7CDgkCZ+qVqtxc5AwxxlL+KekNkZf04i3DSk2Ud76MxkdJo1i8GcBp8sYw==@lfdr.de
X-Gm-Message-State: AOJu0YxVaOodu/5Y5UljV0kPIioh/upEE32/m3iGAyzcuu6OwKnPIHn1
	rppqubAAZeBFtPDbhkK5q0N7Ti8pKzS0AR/9kVTWOVxerUPiQTlE
X-Google-Smtp-Source: AGHT+IESvDRTfHLJqg6bSLeKW7DhId8wERmsPnKqoETq0BdWmaSm/7Xyt3B5Bcl5tHG3Ao7VIpfi7w==
X-Received: by 2002:a05:6e02:1a66:b0:3a7:6d14:cc29 with SMTP id e9e14a558f8ab-3a7f9a35f8bmr79792345ab.1.1733331663474;
        Wed, 04 Dec 2024 09:01:03 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:214e:b0:3a7:e277:b34d with SMTP id
 e9e14a558f8ab-3a807610493ls175845ab.0.-pod-prod-04-us; Wed, 04 Dec 2024
 09:01:00 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCUhKLMBGX+kJILmwIpOPuxomNpq3dy1QfLgsb22SNLVTfsYnVwGA8PaQhbejABDUyUHhCCRTrN4yIaT@googlegroups.com
X-Received: by 2002:a05:6602:3fcb:b0:843:e9c1:9315 with SMTP id ca18e2360f4ac-8445b5e3062mr927815139f.13.1733331659721;
        Wed, 04 Dec 2024 09:00:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733331659; cv=pass;
        d=google.com; s=arc-20240605;
        b=fpYQScfuPVWYCFtSZ+ES+tz7ulp7RIWBWHUhSDTBUuTG6fWkdOOHP1dEG0bBZuHInE
         o6/1ZiQ+qB5w7sg8cUUz0rQ0s5DjJ1jOmWuScK8cwL8J+UVHbqiqpcN1Y1C3V5hCWS+4
         LHXo+XroXjH7hskpCxinNcgq/6PvjvXguPjaxxy3Vayr7xRRSxOzgcvAPtfe5Xa5UgqP
         K8RnlttNWWbGQZIesezIYJdMLkwIkoEg4LtqwjGMFL4dP9pTWQYoZ2BEmeDjPGV3Bcf/
         jm3FhUZotm0wzi2m2z4Z//zzKBy4dRF9vOJE+9kYeXKtp96CCvJ1WAnVpoxcQKlLt8U2
         dVuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:content-transfer-encoding:date:references:message-id
         :organization:in-reply-to:from:subject:cc:to:dkim-signature
         :dkim-signature;
        bh=sFZrdT7LEgJfeIghw/R4j42ZKnEhUkDYPXlnBT7JBQg=;
        fh=+1h7XwcwW3GPDAPVtuHNtOOv9NHVlo3T+fdKW2qR8OA=;
        b=LdsuWFn7Qal+jkK9isfIzDaEpUfiaSW3thQsaF46AWUcH3HJtKP60pdUTufdKSrl+X
         zGPFiE8oMhKhpnLXCVq+lqFnCCxiNJV+Yvxr57O6/enpQXYlHTjgw17GNMmR8SHPojHR
         yMn5X9jDNml//6Gy5ZWF6GVyLCI76jd29qHOdxKHBsRBqA9BGMl//w3qQ0uCPsCamdQO
         pXbsyNodybvQM40uIdaFi9QdGRAbRP1JZgIkfAn8H70ZEVT0bxMRx5kRwK80VUuOyemM
         27GFXFy9dpJvCLjHAKzN4XZPge+wXnT/eByDYGjqnI6zBKY0QafvjS4h9o7XqjyusSx9
         H1+w==;
        dara=google.com
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=C6BN4v2r;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=DElm6ho4;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id ca18e2360f4ac-84405fe03e6si67409939f.4.2024.12.04.09.00.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Dec 2024 09:00:59 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B4GfkKF004238;
	Wed, 4 Dec 2024 17:00:58 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 437u8t8yyr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 04 Dec 2024 17:00:57 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4B4GJt0t040091;
	Wed, 4 Dec 2024 17:00:56 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2171.outbound.protection.outlook.com [104.47.56.171])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 43836vnwex-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 04 Dec 2024 17:00:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f4RZyYsdDLM8jSLeOq08ZGbX5yGH9xyl1of6VHbjUG255hA1Moh0WtzVsgdrdHmhRbL9lrbvpJC9xMx79MM2nChI86IYS6r/R6N3fyyLYFyv4+C1Qxk6fhsVjy2DeiZT7fclXV/IPshV4Fe8hoHR1iKvWZe2SkKJzXRyUiZvZC8Q8NI0pPazBUMtoxlZsi7v+N+O7hZTVUKF+H01rYmqWC+ON1p01E+LZe03v4C0n/R3jVqwkCaiT8mQ0D17IO2/WSNQbQcuiEkcek1gBsLYLAE0IOSOVEOFu6P2oIjkd1T/ayyl8wa15B5gsAb9DWOjMTbBxpz8pBc1sS5XUr+aoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sFZrdT7LEgJfeIghw/R4j42ZKnEhUkDYPXlnBT7JBQg=;
 b=DNvt54ahA28eJAXywqyOaz+FT71Yf54GNwp98zloeDRAsKmkkA8bEnUXgpHzHFt1odKCKFcRTqxcMv2Tst/yo4VMF//Sb7Rr/WquAzXl89O/HbNJefly1R+dbOA61T7XSLeh8fx+Seu0/0Eg+1d0SeJXEwgd82y4dM4l94x8YfMfuUlo1djDhvKshF+bxi5KpAW4voVe2BkQic8DZp5/vLUTj89gt3ofh3T0kC1G49Kpj+7JrS7z4kh3B3UjSo/ww6UOzjb2qqxj9ZImAn5/3tcdS3IX/2uYjA0gx/AsP40xva0mW1JwEZq4rKh1+bHjxxtWJOd8tEzYIyNKNDvdBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CH0PR10MB5338.namprd10.prod.outlook.com (2603:10b6:610:cb::8)
 by SA2PR10MB4796.namprd10.prod.outlook.com (2603:10b6:806:115::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.19; Wed, 4 Dec
 2024 17:00:54 +0000
Received: from CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf]) by CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf%5]) with mapi id 15.20.8230.010; Wed, 4 Dec 2024
 17:00:53 +0000
To: Lee Duncan <lduncan@suse.com>
Cc: Lee Duncan <leeman.duncan@gmail.com>,
        "Martin K. Petersen"
 <martin.petersen@oracle.com>,
        Hannes Reinecke <hare@suse.com>, linux-scsi@vger.kernel.org,
        linux-kernel@vger.org, open-iscsi@googlegroups.com
Subject: Re: [PATCH] scsi: iscsi: fix sysfs visibility checks for CHAP
From: "'Martin K. Petersen' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <CAPj3X_XGg+vT35aHVmxYONVpcjadAE6eSsa=nuUwP-+KHybiFw@mail.gmail.com>
	(Lee Duncan's message of "Wed, 4 Dec 2024 08:43:56 -0800")
Organization: Oracle Corporation
Message-ID: <yq17c8fs810.fsf@ca-mkp.ca.oracle.com>
References: <20241117194604.13827-1-leeman.duncan@gmail.com>
	<CAPj3X_XGg+vT35aHVmxYONVpcjadAE6eSsa=nuUwP-+KHybiFw@mail.gmail.com>
Date: Wed, 04 Dec 2024 12:00:50 -0500
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: SJ0PR03CA0010.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::15) To CH0PR10MB5338.namprd10.prod.outlook.com
 (2603:10b6:610:cb::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR10MB5338:EE_|SA2PR10MB4796:EE_
X-MS-Office365-Filtering-Correlation-Id: 71d24c85-c730-40c0-fc41-08dd1485367b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q1IxQ0VESkYvbkl2cGtTeElhTWM4SDBCSnJTSElxU2ZlcmpKMmRaczlqeHVE?=
 =?utf-8?B?MS9lcFBTT0dNQWwxWFhkaXo2akhQMEpQTDIvNUwzMnRSU1hCNHlxSk9IVFpB?=
 =?utf-8?B?TWdxdmhNNFlNS2J2TVFLQW85QWF6UXBNZFNTTXh4eXIxZDA4aHdZaVVzVjFp?=
 =?utf-8?B?MENoYzh3THkrTGNqU3lQeDBnQW5sMkpYNDNrNE92dnVRanRyUFZxdHYwR3Vo?=
 =?utf-8?B?R29pTDFYc2lrWjZvOEIrWkphVE0yUmU5QkYxQWFTZXJqbkFMbzJuc0FrNU41?=
 =?utf-8?B?dWxQUGIyWjlQT1VTem52YUJJWjRRZnQ3SWRkWWJ1MUxZNE45OW9HdFJjUjVZ?=
 =?utf-8?B?WnRvR1QzK2ZKMXdDcmF2OTB1YU9aYTIzSlc0UHFQbU9zMXB1NlFyZnR6SS9a?=
 =?utf-8?B?TTc3RE85RTdvM2JtbUFObzFLeDBwNERuamE4N2U0SExQS3FyeCtvUDF3WDUy?=
 =?utf-8?B?cUI5WW83aTR3V1J3bFFOZy9KUjRCNHBKYjBhOTd3WVJUb1VWMmRVdTVMMzM5?=
 =?utf-8?B?SjZJOVN0RXl3R01URFN2STJRZVR5WUFCRk1KNjZUQTgzaG9oQ3FUbHJrMzA1?=
 =?utf-8?B?L3N4WnpZM1JrMEQyNVVNUG8rT2l0TW1FMXlFWUhKZHNDYWREM2ZQby9ZRjlC?=
 =?utf-8?B?N3laYXkwNm5RMUF6S0VUVU9iMTdiSkhvWFhKTGRkb3dWQXFXdFhKaENaM2Vx?=
 =?utf-8?B?UnpsdWJrUkFuMVFBRFRKWXVjNkZJbDdIdW5wUm4wb3l6NE9rSzQ4R3l2QmJ4?=
 =?utf-8?B?b2N6VkFCZ1RMNnZzSUZrVGEyUjZwNVhGVTZrZnlXK0dWYWIvNjNTU09waE5I?=
 =?utf-8?B?bmlxdnlYcTUxQ0F4ZDRPcmZUZjQ0dVptSHhybHhCYVI0WHZkQ09GcEEwMlBa?=
 =?utf-8?B?eEdUeU9IcTY4ZnArUytRVUpTa1ladHBUbHVrd2tGZ01HL1RFcTFPRHBSMy9V?=
 =?utf-8?B?NVlMcHV0L2R0dW9VUUpmRFdmQ2Roam9KSDlSdnNBWUtXN2NZczJhb3d0OGNz?=
 =?utf-8?B?bWlheVdQTithcWRBU1NsbHJtNGFJUm5QTVdRRTdnV1RWUlRCYjZTNFNJVWw3?=
 =?utf-8?B?ek9relcyalkvWkdIREhGb25RektQMUd6cWloTWQyQVlTcXR1VkdtaTBLeVNn?=
 =?utf-8?B?Qi9CK3Vzc2NLNDFpV2EwNGRXMjFCaFVieHFIOWNYRWNXaTdtYTZ6UmsyN2lD?=
 =?utf-8?B?UkgybTNwZGx0b3VTckJ1OGI3cW8vYkdja0FaejlJN3dGRE9kdDVDUVFuRi8w?=
 =?utf-8?B?bm1TdDhQamZqNFVFZHNHMndqa1p0V1JIS3ZsTDl6UVJuc1hsVnhZU3lsUmM1?=
 =?utf-8?B?OURGdklqdmNGWk1LdjhRN0RobkFGY21XZExwdkxrNmdqaVNTYThmWW9YamtG?=
 =?utf-8?B?Z0tkYVpqMDgrNnN1dDYvTzJyRkM0U1dZUkpVL09RWGRvS0E5dnIzek15QSsw?=
 =?utf-8?B?QXVaVDIxTmNqRkJyekxNeDR3YzJSbVlmeTdTUzZ6U0VFWjZiOFhqb2FjL2tT?=
 =?utf-8?B?VmpZSlNFRG9QazNvNCszVHZLYS9jQ0NEekhZYXkraUZaZXBqK2hmQzVmamZs?=
 =?utf-8?B?cnFhUVBkYk5QR25UVUxMMEpXZGptdVVNR0dsQ1V1RSt4ZTUyd3lpazR4UGtJ?=
 =?utf-8?B?dHRHb0dTeTFEODNaQTV2NitBYUFXWWFqZVJNaVhmckg5U1R4anBhRzNJbjU1?=
 =?utf-8?B?dWprT0ZIWmo1aUhzWWIwWXpoa1pRR3g3VkdGdjgvZmxyc3F1ZEoxbUxLUWJU?=
 =?utf-8?B?Um5DOVhzUGhycmpKOU9tZUpEZ2tkNmFSM0FiYTlEYnhDTHhIdHZnNlV5ZWYy?=
 =?utf-8?B?c3BnWTlzRWFSTUJKV0d0dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5338.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0NTZWVJdktRTUlacFJibG1LUE4xbHh1S0wzS0dBaXk4T0x3bVErckd2WlNk?=
 =?utf-8?B?bWFIMlgxVy9OMUZpTm9nNktNaUVIS0hUOGZPMHVpWGdaYmZOTEdzQXBSeGhl?=
 =?utf-8?B?eVJDUDE4RXlsSk5TL0FzZytITng2ZmhzeU5sMUZJMm1OY1dVRjJBRVl1ZFZO?=
 =?utf-8?B?QlZ1aGl3YUxRUnVvK1Jqa0UrRHFLVVBvZjZ5RC9MVjlLZFhuNU9kOFZkZ3FB?=
 =?utf-8?B?QjlsUXhuOGNidWtMalZLVkhLVUtrSWlwM1MzL1U1aXZia3NEcWh0RU9RZzZR?=
 =?utf-8?B?aEFCM0VtYVMzV2pVNk1NZm02SzVYbXNjR05oUEc2UytuRUtoSlBOcUtyV1VB?=
 =?utf-8?B?bnZ1aGxxZy9Sejhvd3pBbnZVQjhkZGwzL0NzWXk1cnRvdXNLdHgzOXIwTVh6?=
 =?utf-8?B?SWRaVW9uODgybTlqQnd5OEdBWjUvcTJUNDJXNWNMRFFERGJIdDlaNUgyazYz?=
 =?utf-8?B?SWJoVkJaRktvWjJwZU5aTVNYZkx6cVlWM1R1a0kzK2pGaDQwMU02dWdRWktG?=
 =?utf-8?B?R041d2FaZmZKSlpIMFhoaWJVcHVlTTBIV2JYMGJoOHR4S2Jmb3BtdDc0WG1t?=
 =?utf-8?B?VTFaQWhkWHZIaXF2a1NXeXpHREVLUDF5Z3R0UzRQUGZRd0ZkUjRqZ2dUSkhT?=
 =?utf-8?B?VUNpeEV2SEZHQmJRenJoRHFZTVgyb1VxMVk4LzlBM2VNMFZJK3o4Mmx5d0lN?=
 =?utf-8?B?TFZEMjZNUitKcDFYbVpRTUtvTFplMDRqZ2VVekNYb1RUajQxTWg2Y0thNjhG?=
 =?utf-8?B?Q25nWlAvVkg1WlRYaDJWck5sbkdtYnFOaHR0TUZ1T1BlbDBhc1BRZlRrQjg3?=
 =?utf-8?B?eXRZL29NVkljcm9MdnJwYUUxdFFVSy9vdVlwbFJKQjRJWmJMYkZ1Y2p5YkFu?=
 =?utf-8?B?U1UybXI0OVJ6RUJUcElXb3YzSnpDMGNxQ2p6RUhPVjJoRitRV1NUdmtuQUxG?=
 =?utf-8?B?Z284SlZuaG54azJMTzFtYVNtcG9FdVdvK1V2ZUp4OTlPSjJ1VlJCUUI4cllY?=
 =?utf-8?B?SFQrN2xROUFickljMnBseUJ5YWNLbU1UOTZoemorQ1pCeURFZytuZkJLRk8w?=
 =?utf-8?B?ODN4NEZvK0pBVGFCbFc1SHBUWDFQdEZ1aWpQZmpXc3h1WnV5bDAwUEFiZ2Np?=
 =?utf-8?B?V2ZWU3M4UnBObE9zUnlHUjBWNFJOdERvUGJMNGQrVWgyeHhtVWdTUzdyRXhL?=
 =?utf-8?B?SnFXVlRBZ3U5ME04TzhFayt2VFhib2ZtTWdjempoYlp3UVVkeXhsLysvNVRj?=
 =?utf-8?B?cnZ6SFhLNVNOK3VHNFlKZ0VmYkdXbjl6SS9xeHMrSU5VSERyaXdPcjBzZ29t?=
 =?utf-8?B?bXFkUmM4TFBSaXNwalhnRTM1RDFVUE4zb1YrSkNsMjkvL0xFc3Q3ajM0a1dW?=
 =?utf-8?B?RTRDampWRlA0UGp0eDNrR3VaenljNDJpRkdaMnFYb1JBdjBLN3RQMlltZDlB?=
 =?utf-8?B?YWJxeUMyWjVobjM0ODkxbXRhNVhnRC85ZDRjQU5ENlNGTEtRdThybUJTVFB1?=
 =?utf-8?B?ZXZRWEk1UUFvMndzc1ZMVjVLZmJhY0daQVRkVGViSWJMb2NKWDdLenVOb05w?=
 =?utf-8?B?d2RXNVhCVkJjbFpmZjI0MkdaMGpLZU5oTmgzUDVlMGpQQzRYcjZQTzV5ZHZM?=
 =?utf-8?B?dmV3cXd6UkJkVlNxRmtUdXI3N20yQWxvVFptR3FxT1QwMEZON3licm0zRnlG?=
 =?utf-8?B?ZzlLbVgzSWg3ZlZ1bkpPRXpRWDlvdHZ1aUJZVkhIK0tYdnRvYTBzR0xOR2Y5?=
 =?utf-8?B?dkp3TVdpbytISzM5Ymdpd1NxeFcweE5pU2EvTlVQRFpGNEtTN1NncGgrdlFT?=
 =?utf-8?B?NU5nT0U2TWczRzZORWhtQW9FUUxvRkUzVmEwcDU2SGZGa1daMjRmTnZNaGtr?=
 =?utf-8?B?NFlCN0hNNVFGRU5kVHpCdXJJZkphZHFUdFk0OWRIRFVVSjFDeVppK004K2U5?=
 =?utf-8?B?VDVvR2EwZ1hnQkJ0Wm1kNk1qUXJ3QUltc2xZR3ZBWFRYTXRvZWhQTkZWM1NP?=
 =?utf-8?B?OFZxbGV2MjFHSVRORmtSakh6bVY4QjZMRXUxSlZkZjFXUW41SVg0bTVXV2Jn?=
 =?utf-8?B?cUtBeUljQzVvOUZUOExGMkV1TFhndFNXK1Zjay93M2tIakQ5SjRiNWZ6UEZy?=
 =?utf-8?B?enF5WUl4d3FRVzcwalpVc0Q0TEJJS0owMWs2ei9YclV0MWhMdExpWFp6c1FE?=
 =?utf-8?B?b0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 4F3AlLW/1b0Nq9qDsvBOuWqV8Vxoqp58S2x2dTYNEMk06r7DMrvIeHLTE8nORMqtq3JoI+2xC8Xvs+wjsrcFvdvchxblO0YClbVOx+/hHENya/TFlowiQzCbN/C0ABExKL6LocviH0+Sf/kkfchDHd8OavhtSmCEwgEcAcW3ZzEV30fv00zdTNHDEO+5QqldfJixUfMQnb0hx1Hvn1uHRsCR+ALpZwgHi1JXi2ZexzzdwPI+vbD7mgpzKv9WSQuwHyjNXYjxxpjGA5YHKnzgxCPbgzkMfo1RUdqi5DqwIVagyccixzWleTLuNBFr4PV+7jjzJeOetqyQ7lxhvYsDK0Wuh1qdRXGzUhGcEDQ29fGSspkU/d6SbJFW+3OHFcaMqBHnw1qrl/7ZlbA6xy3Eu25eSFiEWsW/vI94eBEUokSB2kvwGOPqnQUAbISrwxRI90RW+fsmlSDVTRzu/DWAzrtzJ7l0/9tnlKueQbxkkRn1/MG0fVJt9cJSIopNBA5WKC51I9oWu2aD6/GKfU27rCwQN6dFxF/uXTYa8PGxBHcg1wDbFYb2exzvJQHF0xzoswDG/9/AJT6anLgn4Q5pMXscXTDqKkdRUqWycLCvmdI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71d24c85-c730-40c0-fc41-08dd1485367b
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5338.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2024 17:00:53.6172
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Doc70UDnnVJHeIBjN6Lit8cSTWW0/Hx4azsCuW2X1G2x8rITs8zrvBGmB02+2hSTzPMKdbAqTIorQ7ClIuPQa2CKjkU+nlFpmGfkdMh78/k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4796
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-04_14,2024-12-04_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 spamscore=0 mlxlogscore=636 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2412040129
X-Proofpoint-ORIG-GUID: 1R2rvZiDRPTYakhUWiIbxI8bzh9U6g73
X-Proofpoint-GUID: 1R2rvZiDRPTYakhUWiIbxI8bzh9U6g73
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=C6BN4v2r;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=DElm6ho4;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
X-Original-From: "Martin K. Petersen" <martin.petersen@oracle.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>


Hi Lee!

> Ping?
>
> On Sun, Nov 17, 2024 at 11:46=E2=80=AFAM Lee Duncan <leeman.duncan@gmail.=
com> wrote:

Mail problems? I don't have this submission from you in my inbox and
it's neither in lore, nor in patchwork...

--=20
Martin K. Petersen	Oracle Linux Engineering

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/=
yq17c8fs810.fsf%40ca-mkp.ca.oracle.com.
