Return-Path: <open-iscsi+bncBDVIJONZ3YDRBDEZ2GUAMGQE2PBXSJY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x3c.google.com (mail-oa1-x3c.google.com [IPv6:2001:4860:4864:20::3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8596A7B08FF
	for <lists+open-iscsi@lfdr.de>; Wed, 27 Sep 2023 17:38:55 +0200 (CEST)
Received: by mail-oa1-x3c.google.com with SMTP id 586e51a60fabf-1dd008b6d6esf17912291fac.3
        for <lists+open-iscsi@lfdr.de>; Wed, 27 Sep 2023 08:38:55 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1695829134; cv=pass;
        d=google.com; s=arc-20160816;
        b=u+3iQwINzHwcABMUQECwQHpZRKTRWWGYulcvCcWNbs5VzfnvnfLRaeOgNlIddWDUHy
         3ZqCQhU1N++KGlF/Oha8sRk+F624EvgYVGK7AGGd3LhGa1kdCmLXXNUVyHuUPqu0f5T4
         16fg/IUE1+v90jnvv52M+e/N7+kHI3Pl5Kd6TCgP9SpvNelRwgbmKfYA9nU2tQS3UyI2
         UFeifiGBEdfUoUpBN0E0+5TnqBiyRSLhfRnUsqxQxAtEjGNJPWVIe/OMVb8IXtKaxZg+
         nQ7XNGCZyaj1uU+vykrJPEfCgkM/7vXgWaFy3fGkQu0wzALJvKpviFi+VRv74qtAEKgv
         JV2g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :date:references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=u2HIKW1nY+GlO1vjaqxQmbUGosLLrRZLbzGc9eC6l28=;
        fh=GYHPhPtlxIMHX6kVP+V/3a48jc9jeOWiRR1mEsiwEzQ=;
        b=F7ZqMs9iLGng6rbOe75H/NaDx4eY24HVO3S2CSOyB3zTbiU3PZyiuQ1HnyCkyhsPZp
         7iaJNMsFvOBSvHOZRJ2ENK82lqX9O227NaH7PYFmLfPYsT4ltskSXRPGYP2c97378kSK
         C1QYfqD4gQmoAuSjnEf2i95XKNnxooWTgO4bKP/s5LKkBtGc3Ek4wIq2N7FqRlrbXPR1
         7J5/1GtYi3GwKsf3KPeKfT4vV7jOLAKdpyUl25lkvq1AFf+Gp7NvlO4GrzmC8ng5jnWF
         +kuBbbuduu8DcP6XUdHZJTqDW89t4DOkJWjdu4O+j6cw9YSZ2f20K4KarA0O95mtx9XU
         lCEw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=XshgQfbb;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=XM8yr+Oj;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695829134; x=1696433934; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:date:references:message-id:organization:from:subject:cc
         :to:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=u2HIKW1nY+GlO1vjaqxQmbUGosLLrRZLbzGc9eC6l28=;
        b=O6JydV0zkP9JJ1yVsEX6cIEykh5I3iwzj5TAKMArh8bmzaD387VtGYaSvpqdGDePx1
         FaliKdd9d8VXpQuUqa63Bced+8qWBsilMcvdzLBFxPBCkDYSA4vKt2YasFKeKj4n2ekI
         W9rMZe+SISJvAaItz5nXdMYlRYwxpnE0so/f05KFgdBA8CA1Hp4fvDUa4kSxM/Yt0aQu
         kIit8NApwwgOG5KT1ezNJtFVQQL2e9AU73ZHvy/Yoy6/RyrAMcQXn/KIF24it8GFtx+w
         93AJPSRH3EvyIkXIRqjGAZLAzx3goKEwBX3BW2Ro900STR45cS1W4/QRGnvpvhoyFU6/
         70fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695829134; x=1696433934;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:date:references:message-id:organization:from:subject:cc
         :to:x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u2HIKW1nY+GlO1vjaqxQmbUGosLLrRZLbzGc9eC6l28=;
        b=ftUdHwcYigWqSuRFqkSn1ldiqvPg8OagB0kv3hdn4x1V4H9tWqMKQzZz1oHvoQxmAL
         j9WbJn4rd84mGMy5HkMspZPTfRM/egE++WKaqu+zJhRUl8agqt9Rf5KpYH8h2OcQNNaJ
         y7honFisr5SK6wZzbLn7vHVJXGvfyHu+W/g6Uum9IRB4Dca7Py2VP+DQnEaCIj0ObQsy
         A79hMrwH7x9gVmRJRMyDyhPp/4GHs06c4EhVirn77nNDp2IWqXFevlMYSyRPAtVrWrUy
         kMPl/InfVgroxnGnnLenszySJ/04P6AHdtbouyPLs6d/HG9IMDznkeTmAkDguIsnd7e7
         fesw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0YwZAy+fp793oTYM5KkjvW2jIm6iBMiK1mlpGvkHEJ3qB91JoT4R
	IM+o/XF9AzzvZooqrBRsP9E=
X-Google-Smtp-Source: AGHT+IHKxOIwllXXtjpk2IQfyvtjr+mI9d8X+yl9me3N5M/P69t9yH0CTZmHhdo/I5vMaX2tA90JdQ==
X-Received: by 2002:a05:6870:a2cb:b0:1d6:439d:d04e with SMTP id w11-20020a056870a2cb00b001d6439dd04emr2846763oak.53.1695829134072;
        Wed, 27 Sep 2023 08:38:54 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:cc85:b0:1dd:8f40:4d95 with SMTP id
 ot5-20020a056870cc8500b001dd8f404d95ls1483383oab.0.-pod-prod-08-us; Wed, 27
 Sep 2023 08:38:52 -0700 (PDT)
X-Received: by 2002:a05:6808:309a:b0:3a9:bc8d:42c3 with SMTP id bl26-20020a056808309a00b003a9bc8d42c3mr2931419oib.50.1695829132123;
        Wed, 27 Sep 2023 08:38:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695829132; cv=pass;
        d=google.com; s=arc-20160816;
        b=rSo/Nfk/c8cFdfPjnqIG43SQIbf4IjTQWit5xL4VZfqO9I1auiJRqhhJCajPoje4CE
         jwT/Ov51N85lRHahCpbASpyni88Yc5mFltTVW/fbh/1GyRvzmEK3j01GK4ZVNSGd6Z1Q
         DFcUQA96IsMSPaDUDzezALWQdnuA8L1WAPUG37BFt2+UJ64OFT0HZdqzKkAmTJEstjsP
         mqtIa68af0K0g0mytn8kTVSSrYGR1wr0lSxTBBdhhdTeRm00Jw2qjVoGToryHctw3Q6S
         l3S12YtXFmNPIxgonC0qnKIvHt7Xja9IL1/NT41ymu57wTn9haWuEvyyJDK+9fGYdCdD
         Z+YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=5u/UQtXnsXrTMpuoQCxYo2HBBkwzx0mzUD8ZnAYJPj4=;
        fh=GYHPhPtlxIMHX6kVP+V/3a48jc9jeOWiRR1mEsiwEzQ=;
        b=cPbkIzeYs25XAF075fXbWxXC9u5ZNXKsNOBmGyrL+xVN5GCMtweA5TjRb+go3XHUvO
         N5DY9bQXmQGbzvZJbkKbqbpAxM814o82xp6VifabSBjRuG0QyJOfjwhVEJHBgLpNn3zf
         3Fg76RDIdHE09mQ4Tpspr6a5RFg2idM9Fw4VZHpA93nSxbsLT1/C2IeSTlbJNKCKlqpl
         vNq6+COQg5eCdtMJBaUyMTQObN7mrUWmQ0wYRa46akyoW3ZYV77AObMYigGIwXmadzZE
         NBZM79wy+EZav9u+FnO88uTUo92UKm5G8OPEeVsPzsBLuWSD2qHihMhwDtRLd6igL2qK
         wnxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=XshgQfbb;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=XM8yr+Oj;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id gl5-20020a0568083c4500b003a843f1814csi656368oib.4.2023.09.27.08.38.52
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2023 08:38:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38RDSsDg010570;
	Wed, 27 Sep 2023 15:38:51 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3t9r2dj086-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 27 Sep 2023 15:38:51 +0000
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 38RFOt69017984;
	Wed, 27 Sep 2023 15:38:50 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2174.outbound.protection.outlook.com [104.47.55.174])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3t9pfe3ehj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 27 Sep 2023 15:38:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PD0UZ51S+GAkOdT/gGWFHBxBhl9OiOUHXhIKyvjWccMuZT96hK7/b3mr59vGsSPup1zR0p2e7WDdVbdJi0k83QbdD52Iugk5EyXS5g0FxKgC8caZvt42IwKE6aHHVYHPPIPe+YlWkZ9nQw2Vi8Uj1/4CFoc83EiOLfRS1h59k2I7ko6nr0hMmZNc+HUFVAOG/9e4Q/yZGUg0a0HQv/Q+4KgR9RBWDHMK60IESMifnTys0EaC+XwHisWqmlhbbbdaSg6DEzlsHKS4UQMfn+ihbf642J1RC41rJ2uMsH5F+irSsPWkoWS5I1hqx62wfvDCP+YekmYQi06etK+rEJTSgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5u/UQtXnsXrTMpuoQCxYo2HBBkwzx0mzUD8ZnAYJPj4=;
 b=OxBCJydflxH7O+cG/xoLEPHIK6SPu3qd84LcLqonq19p3iZpXUumAwAnkQ+MOw07ko3v3tMUcbDoiRkxDgvvos0sYHtFyjeOdpp7y2JTX+hbEF7DZodYCKKCvdTdrLsI0fdnFkwmCFlBLCD+ckwDD8+N3+3joY45vwC/xSyg9jE7jLgzQnaZmSh8METbSUnyCVZbRuxyk2BdrsHqLG0j/W9dDlROePpQADRmysB31/hvFwpMKaaE4FsIo5krqDKBYAoHxNRYyZmplVOJo1mml4tOwYgtCunZEPyFyHatNDHEbBxKS+8j/vK8F46flfLy7RM4b14gfPlfC6e3YJqTqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by DS7PR10MB7347.namprd10.prod.outlook.com (2603:10b6:8:eb::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Wed, 27 Sep
 2023 15:38:25 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::59f3:b30d:a592:36be]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::59f3:b30d:a592:36be%7]) with mapi id 15.20.6813.017; Wed, 27 Sep 2023
 15:38:25 +0000
To: Douglas Gilbert <dgilbert@interlog.com>
Cc: Wenchao Hao <haowenchao2@huawei.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>
Subject: Re: [PATCH v5 00/10] scsi:scsi_debug: Add error injection for
 single device
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1ttrfzkz5.fsf@ca-mkp.ca.oracle.com>
References: <20230922092906.2645265-1-haowenchao2@huawei.com>
Date: Wed, 27 Sep 2023 11:38:08 -0400
In-Reply-To: <20230922092906.2645265-1-haowenchao2@huawei.com> (Wenchao Hao's
	message of "Fri, 22 Sep 2023 17:28:56 +0800")
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: BYAPR11CA0052.namprd11.prod.outlook.com
 (2603:10b6:a03:80::29) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB4759:EE_|DS7PR10MB7347:EE_
X-MS-Office365-Filtering-Correlation-Id: 244d9ff5-73de-42ed-0aed-08dbbf6fca21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qzmXchTVTIPjEO5FJwUy9B6yjTOCCbL0j4np08FUh59WmBp5243gpWQ2LQzr04zIMaACt3x7W4ryaTI9Ovy+cHge0epQFGpvO7LmsG5KGB0ZaGne3YCw/zX1MiTdGmFPO0GeW8QV4NFVeGeB0c3f0FFWZAU+OvEllcekJYMwTUxSPzC104xptOcoCpPvh89I0Ep2Fi7VlbAxx1wiW9ngEf54RKvBqrPKhGIY0dxOU7F8MlYSvlf8iPM+9Kt4/dx0Y28N88R7KpKg7UIqPM2BWFO2eQgNKSNqCOQfDiY5GoouSZOsU0lnbiTbqIECl/2Nb0cd6ZxdKKyTByT1vlcUg0RhYxaeEDhBmrxzespYOShH3jiWRTJTOXTH9nHNlmbpWjgWZO4pkWyCdiudYM0Eoyl5Nmjnj2esLa6nsZe0hfQsByD6x8bJ3WtWsFsvVaYTdYIsV5FYS6llqHxpFpwN3oKzqqguN74LgFIsnMENIlY59C5OheRmszOWQNgJ/G7oZ2cWI3ghKKWNJhwfIp19PPfLTsNPkC21wZkyOY6LJetzy2fXeS9kvKM6yv9RzPUf
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(39860400002)(396003)(366004)(136003)(230922051799003)(451199024)(186009)(1800799009)(86362001)(6506007)(6666004)(26005)(5660300002)(36916002)(66476007)(54906003)(478600001)(66946007)(6512007)(6916009)(316002)(41300700001)(66556008)(4326008)(8676002)(8936002)(2906002)(38100700002)(6486002)(4744005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?y7svNWbei4AjmKVYkGtWZjBdv7AL67kBurmWOeC7ARCe/9C7VibjH4YkYlHc?=
 =?us-ascii?Q?5Yc1UBeWC6tFPjHCwvYoxq0u4L5JJXDRxte/L118p+Aga3G7V1Wdb6eYQp4m?=
 =?us-ascii?Q?2Zl42eZzwJaNnogebEte1C98V22mgdU1QbDzPQRpzD0EU3JiRfsO7Oe6Wy23?=
 =?us-ascii?Q?3L4hW8aUatAONKozTOA0uQ3551zroZZEws+jr1cbl88sIjioKIAT/BDjf1yQ?=
 =?us-ascii?Q?4zVKaZSsMEdQdHbXEpa+sL3W4rkbzCjQRFngA8c+lzuLyRFUTc0DFaPDfu50?=
 =?us-ascii?Q?c5HluhPX3MIyFR6W7jSEPF9uKSTjsjjeD5ChbQ0tUdotNkUQmlJIVARQkGXT?=
 =?us-ascii?Q?Q6sjdUM40LJl6lovCQ85r8jQx6VNnSQFff5AhdZyxXmzFzDTTafvdCI8RKLT?=
 =?us-ascii?Q?CJAYJz8Gff9+WUrIaZlUpEfZOOgKpqVyALfDpaD/jtIFcOWX/k7U/DfghmPy?=
 =?us-ascii?Q?Q02vwZidkjgcUmWKtRIPaP8JJfQUUkaAqo8k+ugbG2J4vWcpAMWNhNIJre3+?=
 =?us-ascii?Q?TNLE57pP3YgmUvwizTwnqojUflgOsr3Smf3WPppQYPu8zm+UyNkJbi05VZ8F?=
 =?us-ascii?Q?+wWT24G/86eCVRUn9ZkYPr6Gx8ImyN5wrQy8XQwX6kgqvs/sbTt8FfqiQtqe?=
 =?us-ascii?Q?mlfhQQCn7rgU0jzZGAs737/+eGSLLNGD6obKvXjoU+ahmceFfLI3YsjuA9No?=
 =?us-ascii?Q?g6I9UiYQUjPvEiDjRNx+Oy8kIvnszpc7/LUPiR5Phdqk4DLbC0skI6zMaFLM?=
 =?us-ascii?Q?YzSOMreespWBVfuS24TondbWpsKDwxt64jyb3c3Akd5bRQ8+cdayJXixq7+m?=
 =?us-ascii?Q?Agim9eT2cfcG94leNPv01P77ahghbw/9lZIRFaRwn9m9niT1mymDW89km+/7?=
 =?us-ascii?Q?NepAv9GvIcBua5p/ta5cb9doW/eQzeRqh4+kuPucd4iRBtLcs4ukiMkSFWv7?=
 =?us-ascii?Q?tPp147kgqPYD6+8Gp8bD2WAcmuaWM8fZpqaUgX9YF827SNRlQcd/nBU16bHs?=
 =?us-ascii?Q?jSy/w1uiDq6O0gUf3MSSC/Ao1YVOdXIPKR2Ntt1a0cwrp+sH7n8sJPKb8gLa?=
 =?us-ascii?Q?4oRqc62MmmzzCbS0Lz+Ls2vVzOQ3usLXN3sYUgjbXLoIlVTQd8EYVRPJw6SA?=
 =?us-ascii?Q?7Ty0JxWIFgbManl+8mEGM/C2pT2YsiR9VMUHKLjUBpW+Mhlrq7eCePZjPSen?=
 =?us-ascii?Q?yAt7AK2WJUGZUFaYo3ohyBlq27fzbkVf1e3bpUS9E69GC7Sz/Hi5xPCkL5n0?=
 =?us-ascii?Q?ykhS8t4HXFA8UWpFlen1tyruDpxKdFG4VP99ElwAQz26MD847Bhh2NU8thHv?=
 =?us-ascii?Q?EPMxEMYPlny62bl5wYFou/AVuXEglv8VrE1opv8ajUph7VI0Q2vWG5HA5h2V?=
 =?us-ascii?Q?0NGItpqCy8ZRp2NqULvvgbgPiqiW2hau8ep8bt4AHS9RXMfbuhJYQYpvMIZC?=
 =?us-ascii?Q?J+6I3MGikFrX+3yVa7fiRjWUICKHHgYymHDbraMue4+IXrEoKYz3p3Y0nF9M?=
 =?us-ascii?Q?C7hSUQw+k9P7GL6j63dZbIsbuU0r8nZG4N9zR+m5BDiof44laVFNN9lRbfYx?=
 =?us-ascii?Q?/pBnRqwj/5MsPCFonaT7SpvA0kM74JLYOPlMy2lAmrvukgobxxkXo5Jx9Yqw?=
 =?us-ascii?Q?gA=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 2XVGZXrIuzZaQDyFN2yDmPe0KL5d2DER5ceBNjPpYp+8kG57RCTf9xIWmeOtdG2lQGDwEV//cfnVhX7P02ledyZvatEkJPTLJO6GF40IXYDOYcNfGydygk5QCkV3v2rAS3/BnaXb96AM9HKiIJofHBpUkL3wj6BfEQwe86uPpiWoRfpc8GKaFzdKEOJGGkBTeyaYpL6//lR0VpweGEEYMwX0ABzW0ZSl5NAWjbU+Ic9XlnYNoWOAkkaQBFJMkRdO4Pkk3dhrWeGzkBvQ7eYa8JuzFgyS9SwdLkKBq5N91xZVov0flugvkMzWj33jzTK03h/sqsiO/IpkiomMC6XY1FLn9nzWY2AXwdMYeCvaqobSFu/pKkiGiRm4oocL9mavQjQHXU0anneOI2FGs5M8v3YOvHVyVJIw/M3NNGhYMfZ0G90l7E6A+nGQaZCioPYqDAzQwlW3z/IPcpeYrnaNaNeGXyZ0Px7pXsfCTyuSbyi61bvC5nSLmhz1x6LTNsfcoEBd2kZGefKuj/69zmqsb5TxamottC572bxLvqT3Jbe2piVMiEiQsHl6lqpeDkt9eVUVCkEeNHPZASGdJYN/+3AxiqPb5zZEOXmr04xn4tOLU4QFF87DOLvs+lfgW9FSUd+iIHTp1doByxiuvIveyFGNqvGBViLai6bDK679GTjD02bVtCsrcUEicjXUI0T9VtIrS8ddG0BBHHfjO/40WyQNqQlRVjX5hwKtLZ2rA5Ry7irvmjLntfM9sW9AqG+vdclOwoWARIgBRs2kpaWDYiw0gUNtBTGf3G37yXk/fK+RkuSiQSZlbc6zebGhACrovJv9RTufuZzy4pQRDUQ9ohfJ8rnRRonVWoAZuZm762BNLn3Mxa8vzoQojU5d154L34ajs/yigQpI3IEWjXALTQ==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 244d9ff5-73de-42ed-0aed-08dbbf6fca21
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2023 15:38:25.7681
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7PAU3ECQhUUdS5J8a3cvRgz4hJSOr0MnMw467NCaQmxcZPtM1lnRGCSd7+C2hmM6cGXfZuX2oWFZ/GTGfNiDnuVDqSyQZH79fK8ybUlmX6Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB7347
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-27_10,2023-09-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 mlxscore=0
 spamscore=0 mlxlogscore=899 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2309270133
X-Proofpoint-GUID: nJTObV3WQU8LXk4Bic0V9BdhUiNHUWVk
X-Proofpoint-ORIG-GUID: nJTObV3WQU8LXk4Bic0V9BdhUiNHUWVk
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-03-30 header.b=XshgQfbb;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=XM8yr+Oj;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>


Doug,

> The original error injection mechanism was based on scsi_host which
> could not inject fault for a single SCSI device.
>
> This patchset provides the ability to inject errors for a single SCSI
> device. Now we supports inject timeout errors, queuecommand errors,
> and hostbyte, driverbyte, statusbyte, and sense data for specific SCSI
> Command. Two new error injection is defined to make abort command or
> reset LUN failed.

Please review patches 7 through 10. Thank you!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1ttrfzkz5.fsf%40ca-mkp.ca.oracle.com.
