Return-Path: <open-iscsi+bncBDVIJONZ3YDRBIVS3O5QMGQESFKQOKQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 236639FFDF7
	for <lists+open-iscsi@lfdr.de>; Thu,  2 Jan 2025 19:21:27 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id 6a1803df08f44-6d931c7fc26sf189804756d6.3
        for <lists+open-iscsi@lfdr.de>; Thu, 02 Jan 2025 10:21:27 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1735842086; cv=pass;
        d=google.com; s=arc-20240605;
        b=aWCZ55cZgDJS6S6rKNMcaf7DxIZxGuGfqRM2cqBfqaIRq57OM+WJQwA0KiW4x3gAGP
         zh6h0Q45EJs0nuaXC0PSkoGrtgKbgmash0MV91A1psPy587cquhW7bLE6N+aq054jb/d
         nHp2M1a8hFccaOJoLxf9/tcLXZKEUJruCK9z4utBoXTq2x5iz7RKtcp9XQzbBY8Z7ePo
         /y3wHeRGgFQuSe4pE/V3yyTCAYSepBbiNstKtX+gXZ6401X553qF+WDzdl+ZVrMBWgMZ
         rwdvFLcXTrbNGg0Qit4ZldjTxs942FzNlaoySd0/7xT9MeCvP7cVwu5XECLx3OkvkuFB
         /mAw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:date:references
         :message-id:organization:in-reply-to:from:subject:cc:to
         :dkim-signature;
        bh=dIKrMsfdVrZSZbQyy7jGKeKJzcUoZlTYp2pPN+XOUxA=;
        fh=+naOyxVUMYWOStPUctZCaHNArW4xR0p+4PHPqULSyuk=;
        b=SwHpU17TvaZ0f+QObgNV7+SHDa7xj+1V9gkCT4LVx8t77btLHEkHN+8SaXnUte9tuZ
         tpbiXH7Hx5Gq526tf1j+M8WFbLeHZSBQOP4p6MC9053o5R+hclTiK4igQ7wq4dW3GVmY
         Wo9UkLj9sJ5zVF5KBkGjgUSHySZrEL9my/FXBmx7zyBpLGXJKW6siGrQrA2NLXO7z+Iw
         a/hBkLQA6cm+xk6gObcAu6MTPVwR42W33BoC4Xi6jAu3extD9DTFgI7KnEz3UOcc8jYL
         gns0il6Zuhs0t6qsHbUWfX6qRqFCyZZUdtFuL4iqPspvXQ5qR7zy9+rKeR77+WEsB11S
         EGFA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=CdCf+URN;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=BvLZcbUS;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1735842086; x=1736446886; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:date:references:message-id
         :organization:in-reply-to:from:subject:cc:to:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dIKrMsfdVrZSZbQyy7jGKeKJzcUoZlTYp2pPN+XOUxA=;
        b=lOX+IiQ56PsQEz5GaAihcYPAOWVTSDHfPUh2XHTU7VmJLUUBsFxPPWDhPeY7pL7U83
         4NLgufbcXFybeJrApxHw3qA5W1B93PFFFSAnOx02yhLsgqMuIVfjKmIQTHEMBemgf+1J
         wMsziQl/QdrNSNCmdD9N7BeuhXN9hFXQjXQ3HIbhl3B69zd96yGx/mWK3KFOWc2Tvd5M
         XY5Nouk1emDKqPY5TSMQsWYBKoZxMXecWcv6U+Prs7cZks8b5/60RDSkF5n0BdaOd5y0
         +Cr6+HrYoK2u5DT3SOSkrvDpGdTGgtQ72RUtUSv4QsTAOyyjOxp/apyGNTR5yXD6mUB3
         VjGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735842086; x=1736446886;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :date:references:message-id:organization:in-reply-to:from:subject:cc
         :to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dIKrMsfdVrZSZbQyy7jGKeKJzcUoZlTYp2pPN+XOUxA=;
        b=gCKyiS0QfLRMgo4Lk5qlBZq2dQ47FZ/6hcMqrw3Pf3T+4/SOxgg4S/oosPszNt/xl5
         ewG+SXZuHdvAn0RmVOUdYcz5JULfM20twl7HSrImL7V4k5ITNI5zH9HzJUYE5Z3d/UZd
         gZJ50XPS1iwt0OF6KE3jJ/uSnEmR6aF3bhHNmkAiBBdveejpFnY3WF65gvCe6t2nXT7p
         DNycvLWicWKTi24RzGrUDZ4XV5cDo8FvtENMdmBr+cbclSLMZ3A6IO/J0QSJg9YNxmZ2
         Gh8QFPHONVCb7NG1995oMRYhjoMIgnweIkMTosubhuj0imuMalPAHZKLQ4iwrH9k7XcH
         3nZw==
X-Forwarded-Encrypted: i=3; AJvYcCWG1CluL686JzlX82hEqUHgpIOP/AplMCLYnhT6FtFvFnWWPAeFtGNQpvo4Hk7Zgjwqbe3UvQ==@lfdr.de
X-Gm-Message-State: AOJu0YzW+7xaaldJyyiXdzQZpt3KpBL9xEk5h/UmRZIoQPysj3pBgDS9
	KVjfUGPka+GrH/XCTE6UN/TKtzBo/HAZ5Z3w6dEHdXmiiz5IPD4q
X-Google-Smtp-Source: AGHT+IFGR3WucaYiG4LhUiis9TV/8yLgbksLYkHonWXqljWbO/++pTpoylG9IO5d/NFVFz1fVrv8RA==
X-Received: by 2002:ad4:5c6a:0:b0:6dd:d3b:de38 with SMTP id 6a1803df08f44-6dd23345872mr736861306d6.16.1735842085995;
        Thu, 02 Jan 2025 10:21:25 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:f9d1:0:b0:6d9:86b:cc0c with SMTP id 6a1803df08f44-6dd1549dc3els109445256d6.2.-pod-prod-05-us;
 Thu, 02 Jan 2025 10:21:21 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCUYZCRCqmjk9LPuLJYTozOcvLqXthuKeFLAtLbf5NAxa555GGCpMa03/glf28+DSqcglqLUJOmvYNi1@googlegroups.com
X-Received: by 2002:a05:6102:5689:b0:4b1:1232:def with SMTP id ada2fe7eead31-4b2cc31a411mr35948001137.4.1735842081688;
        Thu, 02 Jan 2025 10:21:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1735842081; cv=pass;
        d=google.com; s=arc-20240605;
        b=LD7ti79cl05xpNmH3E9MuirdBhmb5ZJp3aG5r5UVcLu6IpzAmqgiFfPr3PnozzouQi
         6nGvwmyVj/E9NNd1PXxuVrJShzTbAJzvHMYFnBv8uRo+mXI5yM/19aUtMImYeEAQVHqv
         XirDYNBy6O1W9cLcS+RoUu+X8WTIJe8bgaZpm07JdOodkAzoefqd+Lrt2HOjt89HRic/
         ioCNFBoG9E9O16WwVFXhVdAtRObJ2EOf28moGj9tzAz0xfb3I7MmE4XJcvMh0+IO839p
         zpMiJCFg/yDUas4KpqEfGUo2B2XtQ1yJ0oFbPSN1WnVtrVjVPjWSJIL70TbMn1jY9zbD
         bXIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:date:references:message-id:organization:in-reply-to
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=FeE1Y0ybAh/Q7gjYo4axKfORnCVNsJw2l+Qyw6NNIVw=;
        fh=BVJI1ckZ86G+iwIErGPx0LVs0ERWDOnhFItQF7A02aU=;
        b=QgmrG493j8qyjZfH7Bw0rMboj4NeMngravuB+ispoy0KnSPseslfd6LhGAA41CfCCf
         F7CHItiP9ZErprV2u8dOwsYPWXZiq7tdRdKF0hpQIJgSF9/Cb3KdLay7iBNWlddsubW5
         w85pMTr4kyUsqYhyiZEomjBghL5Xe+Bgey16hbNhC+YKQwhQ/N8A1GrnT3wDoQfxJ0LF
         06eb7q5/01f4gzrj6wrROctEtgIkp0RS+YWL6L5OcQfl6NT/BGA3EVH7fDK5ot7xcDEA
         tgDGPy3ZnygCffi1djrWnHUyn+C9OPXXrhuomivvVOVXaNgNMk2szXcoHk1wepkjRwbo
         dvXw==;
        dara=google.com
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=CdCf+URN;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=BvLZcbUS;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id ada2fe7eead31-4b2bfcbff98si1200001137.0.2025.01.02.10.21.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jan 2025 10:21:21 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 502HXpwn026556;
	Thu, 2 Jan 2025 18:21:21 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 43t7rbxaky-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 02 Jan 2025 18:21:21 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 502GnI3B011751;
	Thu, 2 Jan 2025 18:21:20 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2172.outbound.protection.outlook.com [104.47.59.172])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 43t7s8wkn1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 02 Jan 2025 18:21:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wX8P4/2bcAEP6iu3obpcrdwGuHBl1aG77Y/anmrADzMkhNTNDoa3504AVNlDAX0HIIPi1U3r49kEueWw8Ji2RZZjL/33JfPpg20JwmqAEPQOAcMS1MAQsLC9FIkzDvPS3iw+LqbbiXJCic1oqurvcJFw0yoknlUZqNg9WGTGsXOXN2Vs/T9iX79zWEgahZucdTK7SnAHR4O5l5Af0prnzRYGhNdv2WWWAfKMk2x/DvyXqWcPhxLWnZ+sKMIpNdECboVhFYHF38/RqB4QYlPk1m2zEQBNd5iYqij+8PKHJU7dpsJfkG1bxgPOqWRtFIh2RtKRHtsikrh+FEqFnSoJdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FeE1Y0ybAh/Q7gjYo4axKfORnCVNsJw2l+Qyw6NNIVw=;
 b=c1Mekuf/K4deVOsBT/Slx5PmKNP6grgXuEgwH8siTG95ATZsSA1OPwWbSUqQM2mCe+djjZdEonQu4FE4GwUYPwoQwSmIiTOgg5vm9pEjeTcz+phYGsauAcUXfKcruzmVK2jZdpYdVVX2cppYJL/2c23Xirx9KbGH0AypNmwJFF8cinlRYFzPKSaNw6c8X1Sb4qf844uKXNNQLIhOROiumCCmRgaMgTvMOa4fV1yMHlQmmxHbVbc8HrzzF29jJVRa/mihHNWuxBMvX2Mpg6tsDKFfN+sQPEiSwM1z2lFBI5ggMkSp9i0CBPwTCmMQnFIk40WjKaTIIsllXyg3XDWyEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CH0PR10MB5338.namprd10.prod.outlook.com (2603:10b6:610:cb::8)
 by DS0PR10MB7510.namprd10.prod.outlook.com (2603:10b6:8:166::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.19; Thu, 2 Jan
 2025 18:20:58 +0000
Received: from CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf]) by CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf%6]) with mapi id 15.20.8314.013; Thu, 2 Jan 2025
 18:20:58 +0000
To: linux@treblig.org
Cc: lduncan@suse.com, cleech@redhat.com, michael.christie@oracle.com,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] scsi: iscsi: Remove unused iscsi_create_session
From: "'Martin K. Petersen' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <20241223180110.50266-1-linux@treblig.org> (linux@treblig.org's
	message of "Mon, 23 Dec 2024 18:01:10 +0000")
Organization: Oracle Corporation
Message-ID: <yq17c7dgjri.fsf@ca-mkp.ca.oracle.com>
References: <20241223180110.50266-1-linux@treblig.org>
Date: Thu, 02 Jan 2025 13:20:55 -0500
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: LO6P123CA0049.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:310::9) To CH0PR10MB5338.namprd10.prod.outlook.com
 (2603:10b6:610:cb::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR10MB5338:EE_|DS0PR10MB7510:EE_
X-MS-Office365-Filtering-Correlation-Id: b7a7e4a7-5c89-44ae-7470-08dd2b5a348d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eFyEpK8oS9riZnHgO2UYnQsFQJn21pU6QryD/iOLe6Drpgj9Mxbcq5XN737N?=
 =?us-ascii?Q?l2TR8WCZfadqljcux3zw63pzbBUhIVK47gdyCzDL9tKq8NKG2yV+C3sJf/b3?=
 =?us-ascii?Q?b9/EA4piaDg749SrvEMOyTMQCZy+C/H+pnoXFr3KNVfvsOusiP9pU0Kq9GuW?=
 =?us-ascii?Q?eJwsO2rnJLSCvu1pvj802goZjxw3aONHBl05xj49XBvAAlb6yywzphfmo6U2?=
 =?us-ascii?Q?EHq5Dqp0kP4jfE6IZlObDgXrxNOBYrPw2XqoUgKRkMz6XCpHoPMg8lY7+5Yi?=
 =?us-ascii?Q?NzDM6zTCsLXIG1hxa7Mab8gxRKKQ6WVso3VwYbNkI2iqYxDWZYRfmotFig+X?=
 =?us-ascii?Q?BP/zPyDIbmuHnAy8vY/v6WTY1b4EkbXtHfRnpAlKyfLacF/I2BXFxgjqTmg7?=
 =?us-ascii?Q?1s3TbEHcydS/+YuiAfgD35GIH7WIgAMYb8GYXl6ilDjznvg6OY8DbeKRM+ex?=
 =?us-ascii?Q?O9xEP+vVBjZH+1tEgr1NPXgpXMrUbKkKk4Zwd6217MRa+QDi+e4xwKT7D7QL?=
 =?us-ascii?Q?yGWbDM77HkDD+fSulyEpFeKr1yF4u7oscMwM8x359s/qxK94QsoP2jLwe/Ad?=
 =?us-ascii?Q?ivvEzf5Fq5dIgCkXFZLMS0CD9n3qYotu54jwzGc2fXbs2OCvVYZXosJNa3C4?=
 =?us-ascii?Q?hV88OaMW2+MF8+nVAluHMVmNfVG+Okl3g1UqejWsA+xNj+gvIysO0fMpgasA?=
 =?us-ascii?Q?3XbWf1FZiGPZHN2H+Mwi3nmAMyS6f2bNeVqY11XyOHfdgPyYC+7PD82EYh1u?=
 =?us-ascii?Q?KfmKOH7wBmNXaQU6IH+cDKeF25yBM/W2sjOXBjEc0RVJmsZzGdHeIat6SPNW?=
 =?us-ascii?Q?YE+0FUZFiXPzCvBk4wXi1prABt+nYa2rXs5fsN6ABKL8Xdah1+4BP8Q2ZCcL?=
 =?us-ascii?Q?dta3yliXL6u8Bt/7mXywEcplrUB0vZMWZNRDNMrRd8/G5hc1wC2H0ZK51pRE?=
 =?us-ascii?Q?ihL0paVeI/3sYuhzz8mNTauGys0epZrpdPrprbe5WhS1E0XiAUacQufWyEi5?=
 =?us-ascii?Q?GFisXRHa+ihHOsNbRYW8eTVW4dMw9IRfYJYKY1MTl4qY5NH4RW/yxMaZuZ4W?=
 =?us-ascii?Q?CpmMEOVLOnaFOGBQN4VqVxFjXZ+Fxj2XO97U9+Vpr5ktzSmsrZXNjWBbwKtB?=
 =?us-ascii?Q?k/q1MpSlM6OM9mZH/UMbrDq2NfM+lwJk7w7rB+o/KZ7g/vHhVYRC9qBJv7pc?=
 =?us-ascii?Q?5a2iuClrP/CjHdDxV2TTSPSOkJsQILH+HpGWpNyEEaSWKHeE/EgSb4PlQQFI?=
 =?us-ascii?Q?pQ/x77uUGJv4KVO0OMZjuGKaq9m1mf7h9Fj7gNz5Z/k/K9CLCtXwrIPRQEq3?=
 =?us-ascii?Q?HwhE85njOnB1Y6Sr4fsaYWUx2aE5YgpZgnD7qk9tffoR/FXriaCPnBDv7Fe9?=
 =?us-ascii?Q?JwX8K6N1e9yqUuR+EAtQmYqKq4rS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5338.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cbisJXwZ1rGZYGEIn4rvSNdG8oI1SfN60+yyvQ2iVPRg4jkHi3UUo+XwyUe9?=
 =?us-ascii?Q?dfGcXqEJPjDSaQJ4oUuiXydQsuC13ZS6/H9Jiu0puC2y1tolqTzrXN0NG118?=
 =?us-ascii?Q?spc4leEL/08ib371NtlSMexSgAvij5Uarcb77hCA9+aB2rwqWhDLXM0scqtD?=
 =?us-ascii?Q?SF0/cal8FTBSLZXs4IXiW5ZA0Ijcs8J/Ensglj5HVzJ/O6EWAJSxqBqkAJwI?=
 =?us-ascii?Q?S+Cxonq2nXs/lkeqN5SZb/TCviwY1g6fuZLSXFlPJysJG4k5fmNlsWv+wUhm?=
 =?us-ascii?Q?BVEdXGK3sOkS1UQ4OdW1/sWLp02s31vTlcFHU3bf9VUv93bMeu16e+6nK/Tw?=
 =?us-ascii?Q?/RInTzK9Si6RSyayuxshOyCP+LMNoJc7e9xZiD7sh13/bs1eSYD6p4aMRiv4?=
 =?us-ascii?Q?mPg5zxCpxYK6GDeMCLtw+rWkqyQriifQAKxeTodUvR73uGasd6HQtBk4pWIX?=
 =?us-ascii?Q?huH/dHgqFyFEvht80bEmXa0ZsvEJO99b7LeNfJJBXIO7SrZxCtaGZTByaQCL?=
 =?us-ascii?Q?wgJAg2jLvpjlI1Is2ajzNYXLy+4IEmXr0kPkvnay3A4JfupcC4Rv7TADocKB?=
 =?us-ascii?Q?Jcx20hR5GJQmV0LrZYwBrrowOFUnk+vnRFQNJGkjMelR4J6+yFFZUhopdDln?=
 =?us-ascii?Q?OTmOnys8+wPWsXb3kItHqyluK42LhNa822pYhjHgUWE3cUF3IjLN+X1sKisI?=
 =?us-ascii?Q?BPe2yqQensBszl+9YakESdH+Peee4ty1b/RvlJDnfWNW2Hk/iBKOpyC+V3pE?=
 =?us-ascii?Q?syYsc/gVmas2ZJKdMh+KSWUJhncqxt76GDyP04M1dZ/0bYcAdVtWRt0Sl+3o?=
 =?us-ascii?Q?5NU+VSHZWJGZmGoerHE4vUL2FwmJG2W1IQcrx54GT/sVqAquwOgbaM1ehj1J?=
 =?us-ascii?Q?tzm8NSxNC+BwKPA3Sia4GEuIDA8i+bCgoFPdhMn//Ri55PHhbaT4DF+nrdtQ?=
 =?us-ascii?Q?MXyUBE+eqO5jVHnGpgjyyxMpo+tm8dCT6BGJd3sMXPvHfUc/ndQCdgV+7Ihb?=
 =?us-ascii?Q?ejqKdpDM5R6GF0g1RBgYwYyfCeRXkjlH6DUqs5XBHRsqB4A4qDaZQNdi2M1h?=
 =?us-ascii?Q?YTcS6savP1bIs641Altv06Fu2NCUojPuiKXNDe/SMC3yBSvo4vu8AIKxPwCU?=
 =?us-ascii?Q?nZj6HN/RGKTeEjY4pREYQIkarRFTYaOT9En3ysf3zmR/WD7xyNnX3NlZSd+i?=
 =?us-ascii?Q?z7NU0lTyPmogGs1WgOjsCXR/1mCT+1e2K0vK1HFe/AiEYk9GYwA7NynxgZNF?=
 =?us-ascii?Q?dxoV9KztREVPPpS7OwvI3/pRmqlQO0Hz3x9zTq8ndBfGLnCqNyz1HaMPHzTx?=
 =?us-ascii?Q?IRelFrUp7RAtnbaps7EmPxLiax/YlwUFkJ4X9jhtw38SiSpyJE4N9IXCHf4A?=
 =?us-ascii?Q?7C4m3xBo7KCWvJhBfvNlm1n2MaPQMqjgYgSqwimu2LrqzyUKDvcprvxN6jHN?=
 =?us-ascii?Q?OweRSOdEBsPCy56T56xlYCFnqdMBN0Cz4bqhqnH6qhwlTnmpRdx6C7m8K3+g?=
 =?us-ascii?Q?AgOvPaKbLKK8abjvl9+QlL2phT8AdYjoQfxIYIh2lEjweeILBI9kgBvkIERR?=
 =?us-ascii?Q?SH7hqU24MWFlcS8a72lPK/tHktA0HQAKtiPHE8d01rayjfXN094eYdI1YLmo?=
 =?us-ascii?Q?Pg=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: c1uqzA+yb6RoAxyTMPhCBkk3Q47ZDBGoxX7XFpvq7wCpLuvlTolPKCu+EsDS9Yvq8nt3YEyWotMkRfaiOD+siBY587hSLIzDsNMhBp6zIYey/GXBaodyUUMjUQvX5fUZsaYPJ47w+UAOK8THfUrK+J2Lp1m/2a1gaj16buif4XClDLlqQ/l9kdWExbDUE9HkhQ/sv6yXgxx74G+GeX6223xP9+XdLiJWa8V8AXqhKVv4uWx3Dp4h/8zHf4uK9LbBTfbWTiDnU1yC2HGoU6APhU+Aa0WeBImKBCCNQYKf7sMNCAUlXF2BQmIgD7Zpg7iAgebrycZh3SgWxHwiLRptNf1J3NRAbtnWT9bUXLy7TEANw2n0pP38mJ8aHREOHeuA7ONKCGApQGxVHsPFgtPxkv5wXGc4Udm4Bs4yquiOOSZoNMHzk1WcNpDLzNldEM2rmmGnJj+xpk37pKN9rvjEEUxU69dSt4W4K1zgDd002uhZdmY0ccqT/UnSTxGY2dWYTFKdWsc5wNLCxuBJDnHHa1OL9mlTsSM8JdKauN8li0XfGpGCnOFgGN8AbBS0yTorwCFi95qiF82F4/eS5qh8fP5h5rSRBZQmt+BUJSfZvWg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7a7e4a7-5c89-44ae-7470-08dd2b5a348d
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5338.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2025 18:20:58.6454
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: guz4ZLQW4JgbVUh7N02xE0y5uTMWd/xjOXcWCpvjF2VBALp+vcUJ85tmzRh0AMzx7OFtVHEicg7uKitUnUJk6C8aAFlt+LS60tAlrKqMK0I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7510
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-02_03,2025-01-02_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 phishscore=0 spamscore=0
 malwarescore=0 suspectscore=0 mlxscore=0 mlxlogscore=685 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501020161
X-Proofpoint-ORIG-GUID: C8lg8-l3ZkLG1opyg_KQ3rTYWKH3T9Nl
X-Proofpoint-GUID: C8lg8-l3ZkLG1opyg_KQ3rTYWKH3T9Nl
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=CdCf+URN;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=BvLZcbUS;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


> iscsi_create_session() last use was removed in 2008 by commit
> 756135215ec7 ("[SCSI] iscsi: remove session and host binding in
> libiscsi")

Applied to 6.14/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/yq17c7dgjri.fsf%40ca-mkp.ca.oracle.com.
