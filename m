Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBFEHUSIQMGQEAPFKHZA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC044D3A84
	for <lists+open-iscsi@lfdr.de>; Wed,  9 Mar 2022 20:44:23 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id m9-20020a17090ade0900b001bedf2d1d4csf4356519pjv.2
        for <lists+open-iscsi@lfdr.de>; Wed, 09 Mar 2022 11:44:23 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1646855062; cv=pass;
        d=google.com; s=arc-20160816;
        b=oWgK/GybulmccKCtWjOzwp+R/V4DsdBjkk2J3n8kbF3+GT1IgBmGHym9w4JIgW1Tao
         NYx1Mw9P3XZaPd7POu5BLvANuHIDnqnlbgvCTHlI7uKPtzqafHLAmVbzyEZ2QW3cwS7m
         IuvXS3Jb5AVGFUSfYQ8Fc/ToxAQaQq0GiUVndHZwzMiFjdZBiFQPZfFLbnpADxS9abmQ
         hH2ISf443HJVXkwizNC4p4L+ig9Rh6om7TUPDzf3mrRKdDgZcCnR7h8Y+gS8K6HxsRfO
         8tjnw7Fdu7AZG8oI792Xv1XIJ4SiE3hZNY5TPOBnekez9eBrefF5hESbsTS+sB5A7hed
         jKcw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=z48GsKqfM2V1HzSAKhUPMzXiGEf7+Jt1RaqWOnAcyCI=;
        b=wUK1NO5wEEm6eVNRTg7X0dLP0H2o2/Y6HVRtii+Fgxd5BBgQUUxmsN3RweATHbB6wt
         cQWFK5QCIQ1TYrMN536A+774uMTBpU2nlN6YKDUmAlwOxOOVSa6E6au5eyIif4EDj8QN
         5IQxIewb7tyitLrSw7bQJF/SYhbk/05u2+TbS0xI83so985Tak83EIalu1U0yhl2WpW5
         A4cYw0eWxguGgzHA4aIOB+uzLlrZwVgCf8tOuwGEZM8GgVf1jdJSgsfN92JcxgtsHXm8
         VyuQXOOBIea+IuprACZ13700/KiQVKp6Gh6wIWbkhZYbD2Je8qQ+Agm4zD6Iy8DSv3aF
         qX3w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=YPz3Cgfr;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=rnAJ0MDk;
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
        bh=z48GsKqfM2V1HzSAKhUPMzXiGEf7+Jt1RaqWOnAcyCI=;
        b=BJbfJmqZGC5L5e+A8dInnGaReXWTDWwwRBPsjho1S5JaOKrSUi7uw7L1IYqUjhwDam
         4DgmL/bodBAmG4BKj6JBcqA9v/B0ECMraTJIhujXgDXOtVVrUB3HG9RO6bI+5xjjDPas
         +zaecmmfQ6Vx1E0DQN9UrgTziZUH6v00gplxy/nmEL7Z9HisnF/HEGqStHDOKEeTGfZA
         9I7fmTs+4H9PcmEynp92nP7tpePgqBbRYGL4Xnd0bu+TvoXLjsAc5cyrk/RTCImn9SIV
         D2b+kUpHqDMdjdZEj1xke2Nl9k2Dx54JFTG5r6AuW7SAJELISACkBBX/RfI2wcs8NSzg
         XQDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z48GsKqfM2V1HzSAKhUPMzXiGEf7+Jt1RaqWOnAcyCI=;
        b=tJpU3/Vx8Lqud8PEZXuU5leVLtGf2z082nhq5HsnELqNvt7r/QpGK7zld6dHTZtsZk
         MZgLxundpCG3/6LbesgFGK1d7BybKGW3VhxkdFqJ1wFleZsbPo9MgYsQDXQe7JPf8oaB
         mISq64OC09j/WPO9N0vXM2M4xZolOiTflatA9zOoSCZmeiJsbF30samjUSnjf2oZVZ4S
         J7Mifh5ljN93BOYfHGtEkl/VWJDiLBYh5KJwUrYZ1yxiee9NDSKikYkZP95M4s6Sk75e
         tnB48jEGVrpHgpPhL9id6K9VbFahg5Itww3j2FVjn4C5s9j4Bie2ujZAXZgXC37GZAJX
         Befw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5307bG5ICiGJu+1l55McMEkDYZqb8zi7K6vd0ku/PEx5xDYfq8k9
	PfYjqm83568iv4hSbW5QhgY=
X-Google-Smtp-Source: ABdhPJya1pO1QoXNPN5FBePtjhl0WeXoR2LeAmNYbrG9ZI7gPewWXhv0KX+t5F2qP5kz5KYSxo4Alw==
X-Received: by 2002:a05:6a00:1310:b0:4ca:cc46:20c7 with SMTP id j16-20020a056a00131000b004cacc4620c7mr1031432pfu.44.1646855061747;
        Wed, 09 Mar 2022 11:44:21 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:6782:b0:1b9:7c8a:8c03 with SMTP id
 o2-20020a17090a678200b001b97c8a8c03ls2380896pjj.0.gmail; Wed, 09 Mar 2022
 11:44:19 -0800 (PST)
X-Received: by 2002:a17:902:b208:b0:14f:14e8:1e49 with SMTP id t8-20020a170902b20800b0014f14e81e49mr1282320plr.35.1646855059546;
        Wed, 09 Mar 2022 11:44:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646855059; cv=pass;
        d=google.com; s=arc-20160816;
        b=PCgCRjPceYDkxesJF+qkCF8euw1LKGzfBwkdRv+xe3qKXmP4+f2daikAA0SiY/sWBi
         1d2oMfPdBP0bZ3ujhbV3k0n1t2hlAOsah6RGfhb7skn0cQm0qIbZrl07XSbu0Yzbewe1
         meaokJR4RpiY0fjNap5HxvKO8VL32SyykpvmbWR/5TLQ+MlYjlZRy0kxbtOyFyntNcL5
         gq2BbVaFlRe5WAgEeg4xkr/hZyICdw8dyB4QKkuTGw3lDPxWf05MG2rrnkvcDrLv4c9I
         4zW0tnSsY620XqZjYyIQeE4SGTnpKp0rqkZ6TczR7XvRTcKYMWH/07IkSy1qdImPK2YS
         f+Ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=CHo2XS6oMCg+M6GfowRK0h0ayzk+z/m5t6cqnhIT4M0=;
        b=Gvu2jr0L8Oy+fznzfzArAdHyi7NJXEBX/HGbawkQg+ur61MAUM2VAH1wOaTYFmn1KW
         S3grlZyxXewlsBOxPlcc+0N6g0d6dWpG0euNIT/b/15f1aU2F6GSOSE+0ik6XM258uM/
         ertJjd9SxHSA4QF2Pi0fGibapKhTWMWt0MGOhXGtAxqGD+e3EM9cmBZyUN9B054NY/ll
         GjHKXvVCLDXT5WJQboMbYTF3Jz8GxAyXa1UEdzuaA7vgimLuX4NRgl6vINnBOzvJ6JNh
         2J9S0x+o6mVHbtj3rWBXy0saLbjO6GNuUKBG1VGCiebzOIIkVxEsELqFhQsbfX81rgnI
         MXkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=YPz3Cgfr;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=rnAJ0MDk;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id t2-20020a170902d20200b0014f069fe9a0si104988ply.6.2022.03.09.11.44.19
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2022 11:44:19 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 229JOksk017381;
	Wed, 9 Mar 2022 19:44:18 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by mx0b-00069f02.pphosted.com with ESMTP id 3em0du3ajf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 09 Mar 2022 19:44:18 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 229JRMIk191511;
	Wed, 9 Mar 2022 19:44:17 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam08lp2040.outbound.protection.outlook.com [104.47.74.40])
	by aserp3020.oracle.com with ESMTP id 3ekyp34vc1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 09 Mar 2022 19:44:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H7j7rdWG/vZCsvW9VLUOEswRgzg3uGVeI22knGlN6IATFPVePdrYWUHQRvH/oQiDcE4w+l3c2a56sulVBLFMpP2WfPaH63kk+3dkNeKi8XLUmgj5J2ZaIdifEzPgjwJaOEywg3bS8LPDSwDpSEga/OTgh4sK1hXAjSLCWopvIysLdofrZMyr+cxONh8Km94qtTbIOp6C4W2x1uPOKRwjdCUhfcmBxESRF8zX8NdZmxCMwAHryP7iVjKvpH/r3w8E4097z4KyoOl0WSXwHZSzoUABjANPGN8+pHoob/T1vA9tWjdNm5t0mRraRIW4y+rThmcLuEOg4aNnI5weA7h32g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CHo2XS6oMCg+M6GfowRK0h0ayzk+z/m5t6cqnhIT4M0=;
 b=V7ApwNnk/RMWTBkTqesMciH9sQJPOfMr8CPwLAPizW6+cdTBmHVxWzhgKne8qExmpI3t6b8hft40+5fycN8vlNqD3JMOwPGY3IH2CPtp3qwevBPLySOa2Jviv91nCzoq+ueLwskkUT1TPWCLkgzsqnvnDERtjF9iOdet5jkoZcTHM4XgKsCsodmuvo7nqHUNOof1lt/28BafBC0zsQCOWV4HOhHB7BwN6IMf6R004NLc71kyHnBWNYWTw4Ju3MofAMn40lAAF7cVJQo0YYpNwBZKlq3d1Jrh6lDyLcs6dmTxrCMuIDiCL5ptio6ej9Y+csFYRgX3ULCUdmASech/aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 CH0PR10MB4986.namprd10.prod.outlook.com (2603:10b6:610:c7::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.14; Wed, 9 Mar 2022 19:44:15 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2%12]) with mapi id 15.20.5038.027; Wed, 9 Mar 2022
 19:44:15 +0000
Message-ID: <823b30ce-c95e-4fc4-e634-f49c4433bcc9@oracle.com>
Date: Wed, 9 Mar 2022 13:44:13 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v3 0/3] scsi:iscsi: handle iscsi_cls_conn device with
 sysfs correctly
Content-Language: en-US
To: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
        linfeilong@huawei.com
References: <20220310015759.3296841-1-haowenchao@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20220310015759.3296841-1-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DM3PR12CA0137.namprd12.prod.outlook.com
 (2603:10b6:0:51::33) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bc6b8ba1-1fe0-4444-ab1f-08da0205314f
X-MS-TrafficTypeDiagnostic: CH0PR10MB4986:EE_
X-Microsoft-Antispam-PRVS: <CH0PR10MB4986295B6D63B22BE1631B88F10A9@CH0PR10MB4986.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 68kt/fLSujDRWvY4eoLri4AhB4Yf9pknL0WBmC7ZUjgo9WZMgDBDSHh3qsgdeKUdcshdDjEDSYYelzjpRe7Icb25vgv/aFzqqWML0ejvILTmAB2yVhGmmVXaQCjN7FCQvgXodC/DW4I8W5z4t8EtlDyVz4OF2Nh2SlD/fdT0lUcYgvaNDsKYA9V9vJSqhLdU66KgzuCbJ9t4MoVzBkcYDvb/LG7Pubn6LVWyIXNLwbvJ9RI4m74xQq0uKR3RoRp1cIDEZz/go24ddkZmVHTEN3fsESuR6xxOGlhS1MZ63vlMddNgcq9E+ZACAQHGZ3GnfiNASWYKSDv+nJ2KFbNBjPd9YEruqHBHpD9QK/LKOMRZ2qZiBTunyi/G/B7sQWPT08+9TFpZ1suH2u/pc6YRo/gKD6ogoP+yn5vQgABsuKPODt81ArPH+8pffJTP+ZS4NaFAHziGBmZT0gePXT8GlhNqaA0Wwkt7Wds8xPF8UxYhDi0xPWqcoZUrmkOeHghiKntMgYVDAY3MWGGyqIkrw71xpiNL5/hPEk6Oy77QNROf2DC5yGNxlk2/AJ7OjPbRbWWuuz4et9yNF+fu+dwXEdt+X+VgLMN9N97Zj3NcpqVZVtDukkdvxaHy9tg8f8TGoqD2W0shVeVgeMq+e/36yBs5dO6JJZz8FwxeSfpo+OTD9exB9zCht4xUgU7XKUQS1The9gujIxrdmnvDR9rN9cqJYD11GVFXrPROUDis8n6NZr0G5m3tH68sWbMNqgSj
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(5660300002)(2906002)(508600001)(66476007)(6512007)(38100700002)(2616005)(7416002)(53546011)(186003)(26005)(83380400001)(6506007)(8936002)(31696002)(36756003)(316002)(54906003)(110136005)(31686004)(6486002)(4326008)(66556008)(8676002)(86362001)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Rnh1RkdUMVNOdGMwVldsOFpMNE5aVld4K09wc3NyL1lBVjlvYVZSemY2S1FS?=
 =?utf-8?B?OUl3dTl5SHBQU3h1Um85d29qNS9mTkFpNncvYnR2cFVpY3lmZTB0RUR0Mksw?=
 =?utf-8?B?eXNKNkdoUWxrMDBxSFB4N0xjTXRqNkFBaFZ5RFRjZTNtcVcyeVB1SVlza01C?=
 =?utf-8?B?SFFqUVNIR1pHQkV3bWF3Um5HZ0ZlOEgyQ3J4U2lPUjVMWGIyUk5NYkhKY21J?=
 =?utf-8?B?MzBBRlVjZFdQdWM2U083QjFaN3M2ZkNPQmVzUXArWGhwbjBITUgzL29tbFBT?=
 =?utf-8?B?c0pkRlZYMGxPTFNCMWNjdUZyS3kxdFByYTY1UTd0U2t0S0FzQ1B2QndObTd1?=
 =?utf-8?B?T3Y3cHZTODVRVWNzU1NTdnRqeGxpSXdCRkhIc2MwZk5lZ29CQTBJUHEzcWZY?=
 =?utf-8?B?UktJUHZqVEgwWXV4UVhTWGNTdGg2WjJSbW5pMFRrQkFpVUZnaWwrd002Mkdn?=
 =?utf-8?B?bW96UitjNHEvVzdoUk9Wc0pKeElGT1lpWlNzS0lyQ1hRcDJYQ2VQbE1YY2ht?=
 =?utf-8?B?V1VCK3FWWmpMUUwzNVM2Y2hCRDVEOEUzVkRGSEovd3VhRHRYaXQwVXRkR0c3?=
 =?utf-8?B?K3Y5K3NHVGQzWm5vZnNvZTJLNnAzYUtsUTUvV29mWWdSTGNDaFhEd0hwSGta?=
 =?utf-8?B?alZwb1hXMHUwMW5Scyt5T2daYys1M01mZmNGT2k0SVM4SmpIaU5QRGJlL3c3?=
 =?utf-8?B?bTdMOFhwTWtPa1paYlZJZmprdWNaTFZVbHdLWDB2QkJjZFJ1OS9UR0t0WExD?=
 =?utf-8?B?U2pGQWlDa0ovSGcxQ1V1NU1HUE10dERROXBCSCtQUys5bENJQnlFMDdUYUEy?=
 =?utf-8?B?VFdpTlNIV0JQa0JUcWVBaFBOeTRaeUF6Q3pORXhzZVlYUU1zWHNEQmJBU0Np?=
 =?utf-8?B?OG5NUTJwVmt3ZE4yTDZTdHBZUWdxR1IxQjZoaEY3ZE13MXFPQ0lOcU1Wb25N?=
 =?utf-8?B?YldqbHpXTTJ6eW5aNTVtQVRaVXgyNVRzSG0wUHVUNm42SFlHblVUcTBPeDla?=
 =?utf-8?B?WGJQS3QvbEVHUkh0YmpUbklmakNiZFFFdWhXK0pBaW13d2MrbWF0eGd6OC9N?=
 =?utf-8?B?ZWtvZ1c3cmxKYlpDOFdOYUNUQVFIcUp5c2tta2QwZTBkTnlldFkwQzVvbHdM?=
 =?utf-8?B?NTNuWDFNMWd6N1J4Tk9NL2xLdGhRVjMwa3lZd3F0YjRraXFPSG9nNWNOZjlT?=
 =?utf-8?B?enB6bWh3VXhlcFpBVllTMnNNbHBSOXRkT0RUaVk2YVNmZkpXTGJBbVQvUElC?=
 =?utf-8?B?OG93SXcvWDhZeE1tdVFpRnZEd3F6b2VtZWl5cGNZcmUxdmtjOVJxWGd5VjdZ?=
 =?utf-8?B?em16dXF0a01WSDR3WDBueTA4aUZZT2hIeGxaSlkyS1A3VGhvdmRVVHBDclJi?=
 =?utf-8?B?eFprUEo5MkxkamJycVhuRUIzaTJadFlKd0tFbkxYcUovcnhvQzBYRW5KNFZt?=
 =?utf-8?B?aXJDRzFtT2lrM2NMOXgxNld1Q2NoM2srSGNyUkM1dUxVbXVrVHY4R20wLzg5?=
 =?utf-8?B?U0owbGYxUy9WSW1wSEFHOVVoQ3N4VXljZTl1V29ZdFF0b1Bna1BjZnBaSWN6?=
 =?utf-8?B?ZGQ2dzZCWWQvSUp3TUJUc0FYQldNMTNDc3VLbDRkRExLeU5ocWJITTd2bXJO?=
 =?utf-8?B?Ty9nUGVrelh1eEtxd0c4Q1RPMFJGaXdIeU9VK05FY0lWblZMSkJjc2tIWTJv?=
 =?utf-8?B?K3B0dDdOM1VUNDRSSzR0bm5jTXNlNlBwQWd5b3FrNXozZGIrYTZpUVBsd2tp?=
 =?utf-8?B?Y3MrcHNZN0RhV3ZaTjdUdUNYMFV3dDRic0Q0aDUyTkw0ZGtjak9QOHdrRnd2?=
 =?utf-8?B?V2pyWEk1bm1DMEo5Sm1zODZuR056Rkpydm53RG83Vk1sazBHZW5GOHgrTVND?=
 =?utf-8?B?d0lJSFZMZ0hJTmUxNk9iZWpRZnpjSG5VK2J0Qm9Kd0p3VWU4ZTVEL1ZDdWtN?=
 =?utf-8?B?NnNsNGpSaC83dXVwYzVLQURLWHN5RWk0WDEzbkR2d1V4S2dYaUtMcW1saWRr?=
 =?utf-8?B?MlBJU0U2WTVSSlczYVRGcXVnbG5hQWpoc1J5UUY0eUJnd21qKy9JZmhRSHNU?=
 =?utf-8?B?a0ZSUmlrNEowd3F0d0tab3ZlY2FkeUVpb0FodTlPZzRQQWIvYWVSWVBTcm1I?=
 =?utf-8?B?VC9GWVNhYUMvakV5MVdIeEpOMnprbzI5cDh2MzM3c1BlL1dXYkhrNEc3ZFZu?=
 =?utf-8?B?c04yZFZwcXJyR2VxQ3ZkaitnYUdHVHdsSmFrc3BMNEpud0wvV0dtbFljdk43?=
 =?utf-8?B?d3hXQ2ZpMmZ4d05nR2VSOFJzMTlnPT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc6b8ba1-1fe0-4444-ab1f-08da0205314f
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2022 19:44:15.2993
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ERdhnNtlz8JQV92yG6gH2H56Psnpupt3bUJfEzbP2CChROlaw/tBAXyt1S4qN+ZF3L0gDYAQNOAtZ/ugmymixEieiDQvwir2wwQBvFa2cyo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB4986
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10281 signatures=692062
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 phishscore=0 mlxscore=0
 bulkscore=0 mlxlogscore=999 spamscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2203090104
X-Proofpoint-ORIG-GUID: T49dovCJ4EFS3ebarIk4qbYZugSHhwF-
X-Proofpoint-GUID: T49dovCJ4EFS3ebarIk4qbYZugSHhwF-
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=YPz3Cgfr;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=rnAJ0MDk;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 3/9/22 7:57 PM, Wenchao Hao wrote:
> We found a NULL pointer dereference in iscsi_sw_tcp_conn_get_param(),
> the root reason is we did sysfs addition wrong.
> 
> The origin implement do device setup in iscsi_create_conn() which
> bind the alloc/init and add in one function; do device teardown in
> iscsi_destroy_conn() which bind remove and free in one function.
> 
> This implement makes it impossible to initialize resources of device
> before add it to sysfs during setup.
> 
> So this patchset splict both the setup and teradown of iscsi_cls_conn to
> 2 steps.
> 
> For setup flow, we should call iscsi_alloc_conn() and initialize some
> resources, then call iscsi_add_conn().
> 
> For teradown flow, we should call iscsi_remove_conn() to remove device
> and free resources which related to iscsi_cls_conn, then call
> iscsi_put_conn() to free iscsi_cls_conn.
> 
> V2 -> V3:
>   * Fix some bugs and optimization the code implement.
> 
> V1 -> V2:
>   * add two more iscsi_free_conn() and iscsi_remove_conn() than V1
>   * change the teardown flow of iscsi_cls_conn
> 
> Wenchao Hao (3):
>   scsi: iscsi: Add helper functions to manage iscsi_cls_conn
>   scsi:libiscsi: Add iscsi_cls_conn to sysfs after been initialized
>   scsi:libiscsi: teradown iscsi_cls_conn gracefully
> 
>  drivers/scsi/libiscsi.c             | 23 +++++---
>  drivers/scsi/scsi_transport_iscsi.c | 90 +++++++++++++++--------------
>  include/scsi/scsi_transport_iscsi.h |  5 +-
>  3 files changed, 66 insertions(+), 52 deletions(-)
> 

Nice. Thanks.

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/823b30ce-c95e-4fc4-e634-f49c4433bcc9%40oracle.com.
