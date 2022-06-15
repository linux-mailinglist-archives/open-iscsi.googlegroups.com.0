Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBTPZU6KQMGQEYGJU54Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id EA07554CD29
	for <lists+open-iscsi@lfdr.de>; Wed, 15 Jun 2022 17:37:51 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id d189-20020a1f9bc6000000b00368818975efsf1400022vke.6
        for <lists+open-iscsi@lfdr.de>; Wed, 15 Jun 2022 08:37:51 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1655307470; cv=pass;
        d=google.com; s=arc-20160816;
        b=iRav7BnL0teDtNGU+wol+Lm6KbeMOF0OwsvGLh5tgioNNXnlom2aNCcWMCVPykFh78
         dK8Ymzk3HVNwQV93u+4ALzzE6gPZPoIDpoBoJ9ss5MlCoi83iYMx23ANNnbHCypvHhZa
         tWwVk3O8kf7+CX3mJf4yiBDOSsKQ2rHV/wOccDDh675xqvlZfYhHFXfG2agikwHnA9dv
         rH0KVpSST971h2wbWbHR/KZ20+QZBbD7+Pf4uIvDnpKWtAu+OeplyXNyUh7d7X61bpPJ
         4MP1/rwlsk2Tizl6tRcmQqhiXmhHP+72QHiYp3b4ZEta56IKR3OOq0hBIifEFEuYys69
         TTZQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=NbbIfcjWn08etY+E+Qqw4VIthL7FjUrIX10AuA7lOlc=;
        b=Mmn1rf3SIlq09rskukSXRnOX8OXJIuTDLkW4LvM6rgtcqcsGi5K7Z2kHxAduJbXCnf
         3H25sU0CbkF1+ZNxNOp/M1QwkIu4iQ0N7X6R+9l0RwFsQMlhtBgP/jiYTghlWH+3RM7E
         bVWv8cmujpMaaHFgpOVcbC0lqqZzlgkvCCK7E6RnCksXDD6d0fqDQ7lZwi+IBa/CSsuq
         4lfMZP9IFPj1YiJquaTqMR75dLyaNQBqqixcI0pnGUHM8K24dzhfcHVD2cFjvFy2tId9
         pPlFcwYkyJBKrP9nj/UgDZpjH8HpS9SeRVKa3Acj0JNQHvFUo3439lBdo3HHHHWqil8T
         vRGQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=HhBJ34Ct;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="F44CD/is";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=NbbIfcjWn08etY+E+Qqw4VIthL7FjUrIX10AuA7lOlc=;
        b=htmxBt9BB/H6ccQT58JajU9d3Bm2ghd7HoAnZZssBB1fMqjx1kMoF/4llCIcmLzmL9
         h8oIjRlNvmgvIsyaXVYDV+6mfvE/q3DsFyARRilsqKjzJ4n7yQMFAuAnvmuDdmAsK2Pm
         BRTKIsV/Ti4mld0d7uXvVdKMWHVfZ4vp0d9zoskrT3UxqVw0YVJYrdW+zRuyxTg01qZs
         14Dccph1CYfT0sQrrA7ngX1Xc56LrMo+z0cFFafZQofsQXQK9PzuRItBTHUh4WsWzqry
         zvGUfhPzsTDsgfkJRk0/jszNH2VWIBiA1+EnoLwY4KV1U1roaXG6hYAh2jR1K1uUE7TN
         1jHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NbbIfcjWn08etY+E+Qqw4VIthL7FjUrIX10AuA7lOlc=;
        b=n5j85zxGeAuAgQ4sPVuNPL+0cRsUmTaeGNatx21DmIwuJNduPoi9CVZ4NP2+hw3j2C
         8+2Q7xfes7U7JlAD3LPA76VJp05fJVwt5IJTnNI4ZcoWjSYKxwHGPW/uOQ4lfLskV0id
         ItgxiTWoRfMApemUNzliUuVVEBG2n34HvSTTJ9lpBJJuBlH3GmLEVNnYqCtCV8oNn2Jz
         ktJTEh6Iq1PjzCnmw3/STnT+X4UKvb1rKgoPqvZYqN3ukknst6L+DUr3WZcXRzeKe5FL
         iqoPpYGhIhEn/VRORP4aT516MQnfJaV2jqUhK4X9QvdOXvWidv8K03DbQvsroVgXrjoo
         D5HQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AJIora/HCfqUTm2cke51ncOS/G5I2HGmUYLrYgo6vMhu2poG1YyVPtkF
	h1+cswrURjSPlVmkdYzlZ9c=
X-Google-Smtp-Source: AGRyM1v8gfokvqWiPb67AwoJayIakd5iFyGAukzFbZ18PB2vV7gm6fAfbAw2+7T4/M33k6YW0fTCsw==
X-Received: by 2002:a67:f887:0:b0:34b:9e28:8c16 with SMTP id h7-20020a67f887000000b0034b9e288c16mr6866vso.33.1655307470715;
        Wed, 15 Jun 2022 08:37:50 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:7243:0:b0:333:c559:c31e with SMTP id n64-20020a677243000000b00333c559c31els43679vsc.7.gmail;
 Wed, 15 Jun 2022 08:37:49 -0700 (PDT)
X-Received: by 2002:a67:d606:0:b0:34b:efba:a5f9 with SMTP id n6-20020a67d606000000b0034befbaa5f9mr247181vsj.0.1655307468933;
        Wed, 15 Jun 2022 08:37:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1655307468; cv=pass;
        d=google.com; s=arc-20160816;
        b=sgpdtwRuY96OultzY6dK1BLDPBp+04aIR5NTdbqr1D9/nSATMWj9fNM/5j0PG8WZL+
         uB1rbDBXL6qK0G7gWQhQcr4SZIDpGC3PArngLEinBWeZhEW2zlDKTxa0sB/zepHoGRoT
         WG9vFdxKEeuiq9BFz9LEQGirrR3qULZReHGE45EEDxpbqk9phI7Ykf6YF8aECk2PSEDC
         L0pPAb9L1UztM77wPRLz5f9agbv1ZlQELQ2KKEKaDPjmkftWhLCmjF/8ktucB3I/XTQP
         owXI1W47NZwMjViiGZUwp6B6Jy0BG2j+5PCjT43+TZFqxKZs9nwM/dIdr2FuSl6OAqhd
         XEJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=ZptNNAh3HX/0i64v9GYRZLwlS5xmueccyuA2oy9iBTw=;
        b=IdqrOU4MvZFHy1tiYR8qE6VOiF54kPTp8ZPjj1JAtg01/ASShctq2yzgpNRFU67dZq
         V/6IOjEHCyQBxwaGJk+aWqda4zu2s+ERNA9Nh6M+sjlbSCNYNdGtn4GKyOEYfeI5RRTC
         W0/MflRZ9d1Y0ckpVDapFM/pueZT2AD7lR42E5wL4O9SBpbelSgW1RG1P6bytOcOz6gW
         bc5FAquxDbfGqsWdSxdPeWUgDgEEr6g8iSuTrFfeulAPxgcslkNMyMdFX49tPd+YTojN
         mQcAqUfV+dLpBJkMYKB6Zd5DPnaZZI0tvRBbbwHyU7Usksh0LHsAwTNdmYJZiVLOokk+
         y+3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=HhBJ34Ct;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="F44CD/is";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id i39-20020a0561023d2700b0034ada19ccb2si490001vsv.1.2022.06.15.08.37.48
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jun 2022 08:37:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25FDdwFD013354;
	Wed, 15 Jun 2022 15:37:47 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3gmkktgy2u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 15 Jun 2022 15:37:47 +0000
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 25FFaZCN002588;
	Wed, 15 Jun 2022 15:37:46 GMT
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam02lp2046.outbound.protection.outlook.com [104.47.56.46])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3gprbrw882-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 15 Jun 2022 15:37:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lQvnGu15jTOTaARdLclDDx4qUbTKt3lbyYkS5uGYFEdg8vL3E/wqBPCRO2kp/g90qAedyCV23clpTepn5OGnU3YA7Q7l5hdOzQfkcG51CEs2DeFFGL2mdpNnUP+Z+HtFivXii5OqYcNUPLqIAo26M7i7PbG338HrL76oniw7zsFSb4YecYHO05Moxq8i0lgCNQOEQD8TqOcrdaacvFZi7JCVNHORamgDlAtdKLoSEV0n5BKM7Gt2UPdQfqSxQFxUbOEqJebSXd7ovOhEQXKAF7n7RNdCla8nGVQcDdT+N3gupwGiX1T3lnqRRCB8UbTGpXUzXVyotGmpE8bDAv2Nzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZptNNAh3HX/0i64v9GYRZLwlS5xmueccyuA2oy9iBTw=;
 b=dYcq4kzW0xSh8vf2I8aGPb9oz5u6iZsYo70cex5a22/jJdWqQcNopFryJgv7yf/+KE6x8zy47/DbU0/oUbfkzovrRx+URziJuI6kw/5sei7NrGKCsbLI8otSc3a0nzfzYV1kYLA1NmtNAg+q9FSQSwbict/TMerAPDneWBOlxnSHf39RFFkmzIcBJUbypi7ol2BM5hUlysEmYPcAxK6zgJ7s4oSj6mF21PoUOFrLPMaEIYTO0M3xsxXPSmOCRKnP+CcWaNuyqaHX5qa6hVDTxvwYrNWF1pAWAJdAmNiOaz6idwQBSZMeKMnnYfS64EabQrRn8dq41bYJlttiT0/7DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 BN6PR1001MB2242.namprd10.prod.outlook.com (2603:10b6:405:2e::34) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.12; Wed, 15 Jun
 2022 15:37:44 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::f81d:b8ef:c5a4:9c9b]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::f81d:b8ef:c5a4:9c9b%3]) with mapi id 15.20.5332.016; Wed, 15 Jun 2022
 15:37:44 +0000
Message-ID: <237bed01-819a-55be-5163-274fac3b61e6@oracle.com>
Date: Wed, 15 Jun 2022 10:37:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] scsi: iscsi: prefer xmit of DataOut before new cmd
Content-Language: en-US
To: Dmitry Bogdanov <d.bogdanov@yadro.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org, linux@yadro.com,
        Konstantin Shelekhin <k.shelekhin@yadro.com>
References: <20220607131953.11584-1-d.bogdanov@yadro.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20220607131953.11584-1-d.bogdanov@yadro.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DM6PR18CA0033.namprd18.prod.outlook.com
 (2603:10b6:5:15b::46) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 82a8a868-3b9d-4d77-8d91-08da4ee4fda8
X-MS-TrafficTypeDiagnostic: BN6PR1001MB2242:EE_
X-Microsoft-Antispam-PRVS: <BN6PR1001MB22422260BBB91FEAB1FC94B3F1AD9@BN6PR1001MB2242.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gUXEK9/AJte1u7T835oL64uCHcL6VVqT5SyOnC+oZU1pKDsqQ9SRMrk9y9P79KWngdry901uRJVkdhUeQp/B4LYrpuXW+sFULQmPrAmIrphHw/kWZ87aQb+uK6c2owsmiZ0zadfIFnqDnZ+tP9J8TUm+wA7tWqzhqY0c77rC9f/KDs7BhDdDVmHEjmEFX7f4t8YwnUvbYmKExUvQ+VBS+lrCzG6FHTlG5+8XTpqPqXpMF/o3BuoxQR3S+jX7/8ZW3p1P/iPDUU/ERINuLaewE+dcAJGDvdzHm+soKkfbHA0VJPvMHWCD0cwDF/aQcU67QUNhAxQZkQ4awrzt0MOL9Ec2xue7uf/rqSn7xe6Du04KFWXIWlpS6eDqpbuHztgzdQW5IcagO2lFmAoifa17q8GRDUkwkgz2kUJoayy45opzrxv9Rmv3sf+m1XUgHw13VlQvhjeMqc8TfsyHTsvTQItMgMwRYRN5F941qhwPwCLZb4PxxjvHVlYfmosyqVFis/Y7XLKFKywFUzlp/h4tNNdz1bFyOg0FMv3daCAS3054cUfO+GdoGUKQXviq3KbqDyYdMU8WSZ6SDtby5wCwg50DxxwcO4fHho9x/kwHFFOtx+iy9/HvTmGGB+cAuUXe/vPk/N1gWcqqyZX4+XoDNtEc6P5gVsU0p8vvl+fudqKrB+jJl2oanIw1yxUhJNN/tad0y4usN7jpMK717mgna4YN8WLpKRx1P21MeW0zJyc=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(366004)(31696002)(86362001)(186003)(2616005)(38100700002)(36756003)(31686004)(110136005)(6506007)(4326008)(66476007)(53546011)(2906002)(6486002)(508600001)(316002)(66556008)(5660300002)(8676002)(8936002)(26005)(66946007)(6512007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MEhzaGFYQWhWOHFtTFRqWUZ2d3lobitHa29GbFNZcTlHdkRPeUlCYWFZQnpF?=
 =?utf-8?B?ZkpGczRzWHZVRC91eHVjeEt1TUFWYXRUMThCVWl1UnJvVE9aRHpnaWxma3Fx?=
 =?utf-8?B?NEYzUkpXSkd2K2U4VjJaZFd2L014aHBySk40TEthTi9xNXViNk5QdEg5NW1M?=
 =?utf-8?B?TlllcDZjVjVZUVo3NkkvR1hOUTJtL2oyQWExZXg0aUpKRTZxRUdocFJIUW9C?=
 =?utf-8?B?VzdtdkgrYlhQRm9zQk5ER21MTWl6UFIxS3VxbExnU3JSWmFzUkkzT2I4UmQy?=
 =?utf-8?B?R254UXQ0SWlHVFhiVDkzV1p0UUs2cEhhM0tRdkcxZmVJQlNYOFd6WjczWVAv?=
 =?utf-8?B?dzFXN1d2YTVtc08zM2Z3cjd3cHZ5Ym50bE1OdkIrMzJ1V1NhTjk5d0E1c2JU?=
 =?utf-8?B?bU9OOWVqbk1nMndTU2xKTXdibHlsdUhnSmZhYTNVcmVPSGg4NlFLbWhzaHQ0?=
 =?utf-8?B?Mm5TcUJXUGUwM3Q3ZnpVeHpjVWFWcS9uUXJiN3J3N3p3dGZpSVEzNTNIMzIx?=
 =?utf-8?B?RVNYNzg3RE4zT2h3VXZaZTRYYU45elhaVHdHRHI3bjE3cUFrREFBQnVkL05T?=
 =?utf-8?B?Q1lodGtidW9IV1dIY2NKbk0xc1ZZb3F1OXh6Y1FSRWpVR0w3S0xPUG1zTE13?=
 =?utf-8?B?cFdqMDJMMVorU0tyQUpXbTJ1cTdVY1o4T2kvVnFhZkl3eGpIUkx3VmlEZGcv?=
 =?utf-8?B?MkhHeS9INWpWaTVlK0NRNDAzaEU4RFlER3dDN2NRVkZ0ajlDOW40U0ovbEJD?=
 =?utf-8?B?b1EzWVhPV3ZnWnpUbkMrY1orZmp0c1k1V0N2Q29qcFpzSnI1cHZoOFEvby9r?=
 =?utf-8?B?K2FTTWJCM28ycjFIQXhVZmNGdXpLR3dtbVlNalFlcnV4Z2h5VjdBRmF3ZStp?=
 =?utf-8?B?RVhMaTJ0YWxsdHhwNUdqdzhrOXhZTm1Gb21lLy9hL3NQZFEwbnlzRi9PM1d4?=
 =?utf-8?B?d1hodE90YzRJMDRPd3IyNXRGUTlmMDljV2kxWnR1aFd5Yzc2M2hhWENmSDMz?=
 =?utf-8?B?YnY5T2pROVArTGlTRzc4OHoxaERHSzZCbW9pcUZpTkNLMDVjcXdlQ2EvR2dN?=
 =?utf-8?B?RldnSU1qdjJWUkcyUzRuY0dQbFIzQVBCYlNjM3dXOVlaQW5ra0J1eUkzVUhO?=
 =?utf-8?B?S0xkanByQVN0L0xTL2xHK3l6NUJPTWlHWFMvbDVUaXNWZUQyT2VxMWhDVjVq?=
 =?utf-8?B?bzN0ZFZiYnV0ZVJBQ0dJZSt6TkF0MjhHNVNsWEtDdHRseVdndGxxQ1oyUTJm?=
 =?utf-8?B?VjI2ajdtM25SUmt6M09HMGZROTcxVjk4OEhCM3I1Z0RxZDFQT3FZcXQrZ284?=
 =?utf-8?B?S2xYcEpsNW1iRnVhYTZzTUh2MEpVbkN0ZCtycDFmYktwK1M4ZDdrZU9nTWN1?=
 =?utf-8?B?RWkrdVBEYms3Y09HaTMxc3BYdERQcmh0VGs4dGZaYkJxckdRQkZ5dWFCRUlk?=
 =?utf-8?B?NmszZUlST2liRVhyNnZJNXY1cGFIK1BDZWxpVWNMbUdLUWxaSFQrclJEaytw?=
 =?utf-8?B?YnA0alZQM1BzU1F5dXp4TERMOU9YaE9aUm5XWDY5NStsd0NJVUlXZkdPazJx?=
 =?utf-8?B?SXZXK2ljM25lMlV3b3Q5akV4dGd3UmdFYVcwd1N3bW5ZN2d5Y2JSUXdGbUZ4?=
 =?utf-8?B?R3Z1UWhmNWpwOCtvTktqMEFaaDRyOGVxaExRU0FXdy9BUUtqZjZwcmNJZGRP?=
 =?utf-8?B?UnJJZEhrUzFoYi9yRHliZVd3TzNrUGpYd3lqUFovWng5aENIOTQ1UUpuUS94?=
 =?utf-8?B?K244N1pEMjVzdVVyUWVrY045RjV4dk45R1U0VzVJaG44ejk2V2FzV1gwRm0y?=
 =?utf-8?B?TUtxdnh1WDg1M3huT0RCV0UxaWcvellwNDlnL0JySjYwWnRBNERCRjNlZEpq?=
 =?utf-8?B?OWV5aUZ1RGh0anA5SUE3eWtYSGllczBUVVBSU2ZNc1RMMWhERW1jVWl3MVN3?=
 =?utf-8?B?MEF0MDRBNDR6K1hqcFdKT1dic3ZaNC9UdlFMUWlxU3ZTVTJKYUY2cnplc3Y5?=
 =?utf-8?B?NXRYSlVQRlN1RzRucGRZWU5QYTU5Zi9wazgwNXNLdzNRYWM4QnZDOHpyT2hT?=
 =?utf-8?B?OU03N0hNWmZKcjRkTGdTQVlYMGsxV0tqNXExbEpwMGZyc0tyUnJBWUUzVVJX?=
 =?utf-8?B?dmdqaW4zMzJ3QnBtV0FSSFY5aW9ZUzBIUmVMOUtuYkpFckdkT2lhTVY3dnpk?=
 =?utf-8?B?dCtKaEJFdk12TWhndUhUbEIvZ1JkMkE4SFZNQ1NNVUFKaXlaRTlHZDhhV3di?=
 =?utf-8?B?Uy9VUjBhNVFmbThYVkF2RTV0cDlwVnoxbERWRXlFWldjdmJvRU10bWRZWUwz?=
 =?utf-8?B?K1JodEdncDRWWFUyNGRraVVXNWdIWW55L2VSb2xWZDFQTy9CUk5rQ0hiTG1R?=
 =?utf-8?Q?b0FbByooRVIriuQo=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82a8a868-3b9d-4d77-8d91-08da4ee4fda8
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2022 15:37:44.4038
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VOlSkqx+KW4jcEvL9oz8PMLNiespx95pQ1z5p4oG2atEfIvEnHSZ4XP2kypVZVEcrDf7R4j2woYdQW87JDHMmWlw7nZYhU0vdEHFIckBIgA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1001MB2242
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517,18.0.874
 definitions=2022-06-15_05:2022-06-15,2022-06-15 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=999 spamscore=0
 phishscore=0 suspectscore=0 adultscore=0 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2204290000
 definitions=main-2206150060
X-Proofpoint-GUID: SDTnEKDXNLR1CYj6vZ5dchtaBBLzcq0p
X-Proofpoint-ORIG-GUID: SDTnEKDXNLR1CYj6vZ5dchtaBBLzcq0p
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=HhBJ34Ct;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b="F44CD/is";       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
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

On 6/7/22 8:19 AM, Dmitry Bogdanov wrote:
> In function iscsi_data_xmit (TX worker) there is walking through the
> queue of new SCSI commands that is replenished in parallell. And only
> after that queue got emptied the function will start sending pending
> DataOut PDUs. That lead to DataOut timer time out on target side and
> to connection reinstatment.
> 
> This patch swaps walking through the new commands queue and the pending
> DataOut queue. To make a preference to ongoing commands over new ones.
> 
> Reviewed-by: Konstantin Shelekhin <k.shelekhin@yadro.com>
> Signed-off-by: Dmitry Bogdanov <d.bogdanov@yadro.com>

Let's do this patch. I've tried so many combos of implementations and
they all have different perf gains or losses with different workloads.
I've already been going back and forth with myself for over a year
(the link for my patch in the other mail was version N) and I don't
think a common solution is going to happen.

You patch fixes the bug, and I've found a workaround for my issue
where I tweak the queue depth, so I think we will be ok.

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/237bed01-819a-55be-5163-274fac3b61e6%40oracle.com.
