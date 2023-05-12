Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB4H37KRAMGQEJQFGJBY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4AA701229
	for <lists+open-iscsi@lfdr.de>; Sat, 13 May 2023 00:30:11 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id 3f1490d57ef6-ba712bb7b28sf6497856276.1
        for <lists+open-iscsi@lfdr.de>; Fri, 12 May 2023 15:30:11 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1683930610; cv=pass;
        d=google.com; s=arc-20160816;
        b=kZ8qA8TYxSl+jeW5Gx36rGFP69GMxcaXHabj/1GzNaC9Bvaz7fBpZCZFN9f+39JXFp
         w9cXl1++I37TodM+qWrTQDeVOa9dlkaIpkZPLB8cnK3IjmEMUi4mywn0htbDQ8N9vWPd
         twPpDfEDAjYoduO/mSWpGyYRJ/HqemdE+ftesgNJuuA4ZTztE1v60/Y5FG62zgLMQ8O1
         vXKF8rgxk9Nf4Wu6nuekR51VK/XonbcELQsst1Z/FtKOT0EvzPsk903FoUj+gXMKXHUd
         c9sRDi3DSLAi3Eeubk50LE+ssd1f/KZTytsWZc4rapfoqTBe3TE+NclDl82cmYylJPf+
         xTyQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=StXsklaEvsPkwak8hHc9JyxDRt5eDInMvT+SkpJ9+3A=;
        b=wTtUYlOqXG5xnbQBh4d/lK2vkXww/7Nx/YCwTZsTyTxsGrDemWh24PRRkamiqGHW6B
         PbzKgteBsO7RO9Mb7p3XPB8XWTtiKsf8vwsUgdKjYvuPSSpv5hvKPxa3djRR88ois07B
         xuqrCSyP4CksHOp8jo/O9pgafJUdpBGbUDvaQaT4IZdBzCp7Kz95V9rru+xVvBY5heu/
         fkazBlCVEVIttACQlF7D5OZ7myz5DVh49x4EHHvCRjccizdOYlrzEFhbOxlKijpHZx0M
         9YrD7/ZAaduN5y463gpOATaG90qOGZYBTeaGMKocbcCIShPHTclEOrjPLx78FtLBk0X+
         7NlQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=IRK62GzT;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=tuAgFX0S;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683930610; x=1686522610;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=StXsklaEvsPkwak8hHc9JyxDRt5eDInMvT+SkpJ9+3A=;
        b=jRDSKKT9Q3YW6wLyKE2mHKCY/xf+nJZJcQVXkYW5zaZEp2HPVOTn01jXIbPc9CDKcO
         SXtaUmuDwaoBRW9BYVQla+NkWoxWXCZYNZ2dqw4SVjmqRV3swNtg1Qdmk1+sCh6nEMl3
         qNB/q5p+8UiIqFTsJITuMLJBqsKhKfJzWwjSYTKqoWE2OHrvk5ElpsMThGv0ITs4KTGm
         8eNQx+kq1q7BA8Ag+LfHNE624VYIGm8XxKoMiKN6+cATntp176JZll5aIU369HwIxqAQ
         xkpx83ArBaFSt9daZPMXl062tHj0CqTWVVOYqdQucA0Lutqj+T97BfM6V8MvbHO19r59
         uI7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683930610; x=1686522610;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :date:message-id:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=StXsklaEvsPkwak8hHc9JyxDRt5eDInMvT+SkpJ9+3A=;
        b=FO5CX2vQkAZ0rRm8rOFleJtecZWY3/xKMRft3IxmEVzyODlmeOTsujZMb2St2HTa1e
         nhQrv8l6EZpziEe/JrDyaJDoGzMbPL4LlrK4CNWgBf4WH0WdYJXQV7pptTRzgSG4mnIL
         SSEaheqhzDMZCZy9LhGi/qtJ7gCCi/xNArLqE0t7t3sHf/ChPMJ5rsx4/OqOSoVj0xO/
         jTEYqk02yu7h/lJxlXo4Jh9jwh7opEgKF00wXlVss1zbZaUzX3ATX78g2OZ7Bt/yip1r
         XTmL6yTMnTeYjYZ7VqdmgaVRHOTREcUCKIsxHLNcNazWnQmln21t5lpELv1rNHHA1A8q
         jc9w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDz8E2NftFX5+38O3qVGO4PNzd/aDUhhdoFwPiNWpiCfXufzISo9
	Oye1HACRJC1zlVDIDOm5WUU=
X-Google-Smtp-Source: ACHHUZ7hoSoM5vVyOS8KPkbYOT3XvQCyJIUpbC6n5pYvRd4ZiLVdYHVhoEEqNvvRJbsPOE58AY+X8A==
X-Received: by 2002:a25:5404:0:b0:b8b:f5fb:598d with SMTP id i4-20020a255404000000b00b8bf5fb598dmr15976428ybb.6.1683930610202;
        Fri, 12 May 2023 15:30:10 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:690c:2a0a:b0:55d:a2e0:32da with SMTP id
 ei10-20020a05690c2a0a00b0055da2e032dals6328483ywb.1.-pod-prod-gmail; Fri, 12
 May 2023 15:30:08 -0700 (PDT)
X-Received: by 2002:a0d:df45:0:b0:55a:671b:4685 with SMTP id i66-20020a0ddf45000000b0055a671b4685mr24694240ywe.46.1683930608525;
        Fri, 12 May 2023 15:30:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683930608; cv=pass;
        d=google.com; s=arc-20160816;
        b=JiYhx1PPEp4GVkLgFaGT1Y5YMWssm0aFE6ZMoGZiAl4V08BopQTkNo2m3/fdcKESYN
         I9eRp3DOYeVJq8FM+rFUVOPYOF94+FeM/6fkc5+W62o05RotjB5lFOJPe9teM/LewOE5
         gKxiouHaQUOdbRski1qrysVrldKLwkza+2lyOqjTlmzBg/OE3aQvsIvFv7PapBTh20F9
         1OJRmvvsEwDI/cr5lrNFeSFhdAvj7TezQraO7YYC0v/pGB12KV2S9qvrdaoGPeogRFYR
         qrw1wfSAEP6lrbH3aWkZiYBi0llyTgqVfumxiMe4nxZyKoi0cUrBLChYDq/CnbkOPqKX
         jxZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=UgE95QSNGxiUaPfLiZFrgs6z5ltC/M072ygJMhFssm8=;
        b=HPr/avsIOct2oVVUhW8k7MD3J+gqe7K4FbQuraOG2HgRvb0EvAQcM3ScPtRpAQwjg5
         Db2h79W96rqdIIOcVj4QAeZv2hZn2eXEWEDTCUbxDpucKTP00Dgu7jZvW6/fEPxG0xRs
         eBjXcsMyo3+jHk3brU8WsRCCPRUzyHpEAjPmpFsV7X6WkV+BBfHiqpq2PibArZ5MgsnJ
         NDcsPCYNlhO9vzbbVtwAv+G5z1oBZTMyVHojyCM+aNueHHUYpcEJ//unlvrvCIUU/3HT
         v8IYk29Zs/K/KsTgGNjbdCJe1+VUUDGAHxPwqyx873KZtKnQ0/H/5S9j8HKEUROXIRNJ
         C5Vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=IRK62GzT;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=tuAgFX0S;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id dc3-20020a05690c0f0300b0055a5a7bcedcsi130003ywb.3.2023.05.12.15.30.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 May 2023 15:30:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34CJ0nJX021751;
	Fri, 12 May 2023 22:30:07 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3qf7794b4g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 12 May 2023 22:30:07 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 34CLG1Q1011669;
	Fri, 12 May 2023 22:30:06 GMT
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam02lp2046.outbound.protection.outlook.com [104.47.56.46])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3qf815ek63-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 12 May 2023 22:30:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ntMA3wS3UYXZvGyirvdHEUhV1zGynokqDdr/7MI3NQaNMMMR4WxQBiWJqAzKDLZzC3C6Kl1c+Pyl/vMpi2rduGYAfsLjYPO2GZi+Zj90uN4i7DClXrTVY3HYHYzhnyfjnZD+wMKajDMDzbnkhTezrMs2nkKYqFN4o5JJ7yyS0/SZh+EWEXZjhl3Dk0xASfxkgjNe5erH0ZlIf66Wr85e53h+svh/oeoeWL1M+xVco8SmuENBNEw0ezl67jAZaWwPWVpQly78pIyYH+sI3FpM3/2chNqgZWds4WDUrLAmme3P5FHpPC+EAcda4YO0k6gYD7sGhmU6dziYVza3KmkU2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UgE95QSNGxiUaPfLiZFrgs6z5ltC/M072ygJMhFssm8=;
 b=Ua9thAQGaVnsJ06guPiOC8w6GrlifaOINzsgCPf7sc6g5vxTpJDIhy4q4KV6SEaTIH8UBnzy3oNetgXubUfIazMyQYDbtU67upArCbvw9C2yv/UmW+f5+i6tQ91cSt6Y5t8ea00W3/D8n/Jvwp/xotKyLysQ9BzYAdiC47S8ZtQTzAJtipuAZ9Gr9B1hSr86rFsCJS1VU4T5FAo5acDP1HD5Q/GTC36Q/kdKunFo4KPBxJDaitzGzk2Jau2udisGpFn2E/4L1UtpUtlU9T0A6vMca1p7oeIU6dzrsin373G99c8m+GhorQwyLqpgcQ8sEPb3boqAgqes9bYj9j+7MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 PH0PR10MB4424.namprd10.prod.outlook.com (2603:10b6:510:41::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.23; Fri, 12 May 2023 22:30:03 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::264c:5118:2153:91ef]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::264c:5118:2153:91ef%12]) with mapi id 15.20.6387.024; Fri, 12 May
 2023 22:30:03 +0000
Message-ID: <1bbea295-69f6-80ad-2000-a48fb1da8eda@oracle.com>
Date: Fri, 12 May 2023 17:30:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 05/11] iscsi: check net namespace for all iscsi lookup
Content-Language: en-US
To: Chris Leech <cleech@redhat.com>, Lee Duncan <lduncan@suse.com>,
        linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
        netdev@vger.kernel.org
References: <20230506232930.195451-1-cleech@redhat.com>
 <20230506232930.195451-6-cleech@redhat.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20230506232930.195451-6-cleech@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DS7PR03CA0024.namprd03.prod.outlook.com
 (2603:10b6:5:3b8::29) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|PH0PR10MB4424:EE_
X-MS-Office365-Filtering-Correlation-Id: 842ecbf4-4e09-4af9-bd75-08db53386e1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HQWb08C9iWXReto05CIfTGjyeCQ2QzIX8oFkY54M0L3tFDPvlwLxMizhfITnlgLhmMFrIM9kxoX0kXVR82Pv7+sRqXvldtog1jO0vxy6QofOL4mE+rbvAFxorcVjljh1TFXGxcGGxje4pl2bi8xUg9Tymmxnc1P5836uHftSJvPh4WTZT6JZzdGhV5SRY8Mea++faSM3nROQegOo49GD37/UX1GFC7IvZmIwyCY6DXeGY2wWeu5gZhxmwzE66CQ8MkKWPD8dv/14BgjbU44Er1nBDvgbYL9X8k+KmBSoZtUHzj9F/5A3ia2bGx2rUIxt/e8qazAGezfm7lbnaLQhgP6o5oZNfkXZnDNckLF06t7xn3+ZvMKiggO7xYljs/MwvXn4dt2xFpVD2ShZJOEPuj2Bcufgyv9hDZlR7+8xEgFat23gquzoAqENDiRcLMLuOVKTnN/E5hLM0Fl7CQU1u6rIrMlu+iLnW/8HIhIwj6S20ip8oohS5a1uwEZ42U/Ff+gjGx8AAPCK7fofUvB+53QriSe3laqPheDGllW4+wN/G6jNF5XoeYWo9w7xPqqewmX3AFUBHZOkUQdwGSSm+6Ic3QV8q/Py+l+hhgfXDDOfubAOnFKLgvFCmuW5Ffl89MZmCiiVUPpstwQ8C46mcw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(376002)(39860400002)(396003)(136003)(346002)(366004)(451199021)(478600001)(110136005)(2906002)(66476007)(66946007)(66556008)(41300700001)(31686004)(316002)(4744005)(8936002)(8676002)(5660300002)(186003)(6512007)(53546011)(26005)(6506007)(2616005)(6486002)(38100700002)(86362001)(31696002)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RXMyc0VVME43ZnE4WHYzWVozL1o1TnVtQzNiVFFyV252RFFzeVN2ay92VDVK?=
 =?utf-8?B?djVaUDJpYjluODVQSm1qQlZWMmVuTXRhMEJvbFZIakR1Ty9XYUZrUHIvTlQ5?=
 =?utf-8?B?R0lxbjFCNERab041MXc3RDhFMVF3K3NocFM3M2l4OVFJbE92RllTVVA3c3c3?=
 =?utf-8?B?OElOczlyUHViKzdvanJlUGh0V0plWEJtaGNRLzVtZEZiOTNiYW5wU3NEb1Fm?=
 =?utf-8?B?aE9NZk0zYms3NDk3WjNROVd0Z05rcHFCeW55aVZ4U0dtbjMvcmN4Y0hBZVdu?=
 =?utf-8?B?cERoMys5MjFmalVrK3p0STFUZmwxRmxQbVRNaGFpWXNub3V2V3NITklXKzlG?=
 =?utf-8?B?Z0szb3BNVlF6bHdjVWtKdE9EeTcwUG5EUlhDakRmQ1BTMUdZZUxxWU1laEVh?=
 =?utf-8?B?VWxEcXdaOFdFNE9uSXdIUzdVUFZmT2U3Tk9yS0hNalFOSDNLc2hocTBMbkJN?=
 =?utf-8?B?L2RjdlkvT0s3YU11UVFIcUJqMForYTlicmNRYmRVUzdPcXRuT1VQcG5WdFFs?=
 =?utf-8?B?d0JhY0FFbHk1eDNWQTUrZVo1Rk9iU1RjS2I3MFpaU1dxbU1GZUVVcmVTcE1r?=
 =?utf-8?B?eGUwZlhkbjFqMzJCdWlIYUdxTnNLU09IVFBqUDdLVHFxemdObHZZZkZySGNi?=
 =?utf-8?B?NGJkSEhzK3dXaUVsQ3ZzMkdDbXJUWDRyMzdwSWpyWVVOaW04Zk5mMU1OaUcy?=
 =?utf-8?B?a0xFV09GN0ZuT2w1Ump1MitTZkFWb3dRLzNiOEZlYUVDSVhLRDB6SGUvbzU5?=
 =?utf-8?B?YXlLT3hTaUxhMnFiTzV6NjZUUlRQaUxEekY3RUM4L0l0cEZwVDNRTmV4bS85?=
 =?utf-8?B?ckxuQitOTi9wL1VPZkpuWmtqaHpnMHRFK1F6WGRVQlVQQkhEV1oySWhTSFUr?=
 =?utf-8?B?WnZxbjNDVjFyaDdkZm5NOXgzRlI5dHd4Qzl6QVpwV2JrbWVuMncvZG9NZ2pa?=
 =?utf-8?B?bzBuM3dqcEZqSTM2UG9QQmE2SzV0UTE4NFJYSHowcFFwTHFSYjZTRFVrbDlY?=
 =?utf-8?B?QUdvVnVYK2ZKT09oWFNHWE1LczlNajVlTFFnbTVFdnpRK0hSTWxuWG14ZlIv?=
 =?utf-8?B?NlpqUFlxTm42K0tKYkF6NjJLUEdydjN5cU1uRTB5VWI3RllsNGVlWFlXZjN5?=
 =?utf-8?B?YnI4VzlxaU54VVFVanhadk1jeDg3V3RuZnNJZVRKUFYvL1YwMXhGUjgxZ0tI?=
 =?utf-8?B?ZnFaVjBMRlhXaHp2aE5MT1FURzk1S3l2ZVRHaFZha1pGTXhycVJqK1V6eEx3?=
 =?utf-8?B?VmhyVUltVWlmdXZUWXVVUFplazZnUHd3aXFBS096VjhGWkJNMnhoakZxSmQ0?=
 =?utf-8?B?SE11L1NFSXdmRGhtTXVGOENJc2laOHZ0QVBRU1UzVEpvL01iZWVWaC9EYlM0?=
 =?utf-8?B?QXV3MWVYY1F4UGRPRU9nMXdaV1I4eGlmVTU0UjVNWTNqRWlrajRMaEF1RGVh?=
 =?utf-8?B?VWlXT3RSYTh5S015Q0lkaFlhb1lnSDhhVlNwZGJDYlV3WmVGU0dqei9xeUcw?=
 =?utf-8?B?Uk1pczN4T2w4aytOMGVZVGxFelN6UzN1WkUvVjFWektnZDE5Ui9OaVFTN3Iv?=
 =?utf-8?B?TWxQZzd2eGJWb1NZTEJ1WE0yTXBLbXdGbkd1RktIVkNibGZKVXcyZE9kWXhU?=
 =?utf-8?B?OXBTMFRKRWMydVpWbm5weDg5cWJTRVpsYXJGR1VIQ2hCYUZFc1o0c0RuTzFZ?=
 =?utf-8?B?T0NXR25oRUhmak5idENPN2dKaVJyZ3BYaEFQZ2FlSEU0YVZFMFFIMGxSN3Iy?=
 =?utf-8?B?cTZOWndsSkhzbkNjb0FtUzNWbk1YdUJNQjRjVjVLZWhpMzduTEkyNmVxWjBQ?=
 =?utf-8?B?REtCTnY4UkNyTDluelJpVjllT0o1KzFVRDdBRHUwdWNNMGkvZDdFd25EMTha?=
 =?utf-8?B?T01VRkJwbXpmMW9HV2NNK0NUeHE4V2E5MkgxbjNRUmFqUE4rdE1XcENWUCtQ?=
 =?utf-8?B?YWh0TnVQVjBFVndjTEYydmJTWnpoYVJVR3NDVU5iQUFseU1xdHAyYzRENStk?=
 =?utf-8?B?bXpOWWMxQlFDSmdlMjdzbkZZbUltaFFGbUNSKzdEUE5FYjltclliOEwrOXpx?=
 =?utf-8?B?d090WEhTTE1Na1gyaUZNeEdPNFJ0Qmd6Ym5YSGI4UEcvUGVKamlWSGZ1YnNN?=
 =?utf-8?B?MzBrUFQ5UU90OW9RM2xaZFp3Rm0rbGdaNGhUUG04THh1Y0hSa1B2dFpDeCs2?=
 =?utf-8?B?R0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 8hGA+BtogmWInzmMvdrg+gMR/zQw8AZ1ClTI6zlkUpUAZTz+6uxFfxHvT1+vjArtb0ZGzS46VSYuN/z0hSZmuV05geTHupfPssEuA1lCOtel9YIDhhcO5d3RlIC2O2cyHo54b8ZarOfOLHdc/JXVgz4CDO3yJ1+/fsOpa1LntQlMMc8TdQ6jHrTued5lzNUfzhMtj8TMuQ40VI2+BjPHTf9veVQ7wMepb9QbFj/k7k0Mm4/8lEc6gUuFBZZ6rp36ezSd8Tsggs00+hlZHJOH0OTf0N6F5yk6EqQQkQU73YvYdlWXWMueOw+I4U6Co7VVwF8k1KO8rC3ULlN2SP+mr9LwZr3nMZNx5ckDHy28FBIFY+8EReoM9XsUKc3ARnN+KDU/SYJdlWflHA5uDIXyS9nL5OqstQaQ8ItwrCBafRJ6Bl+gfthyHXeVlTlpxWe5J2scwyWeQJbgIb12jhfJc6AjVLnU7aHZmYU+W1l41S7eyKZO7Zhtx90WHn1pYJ63/m7Hc1YSIAZehTd8gIOScoWeNTbGapfAXra+Rwj5FzGJe8pjcn+WwpvSQJV1zhJfd0eYNybi0C0IJuF3Z1HoBQd6FFnu7OPp4a1OVwIqglgzNZv3U7yYos+w6KItU8MDKwAZL0JqJcJIRRVtj4YYtbp7uZInR7vVBo05jvVZlHm+8eVN792OL/+1FRJyqO5XwpQXUtuH8m0PiGTEqoUUV7tQfo/9vb/CPb/WAqrK1hIIbl8URv2zSicY0s0jJLdR3dbDGMRuR8hRwUBCH9MBh79u84qdI7bHhXyFaIseIn4ZNHPAsGg9AXIL/vhju3udAJKqfYLvqUl81hNw5X0UBBNJvyLDUxGw/f/gMv30TPU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 842ecbf4-4e09-4af9-bd75-08db53386e1a
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2023 22:30:03.6284
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T+5J3DeitcuhNVHHVQucz9U4LJzHri9pF+qSjjCKPCISxX1LWqWBHDPeU8+ELFVNE6K81zWZg4ufp1DmJmO9Ds+2kLkBGnzUlscGzXBB2ho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4424
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-12_14,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 phishscore=0
 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305120189
X-Proofpoint-GUID: P61GQfxMvulfihMuK2_3UfZH_dh82zKQ
X-Proofpoint-ORIG-GUID: P61GQfxMvulfihMuK2_3UfZH_dh82zKQ
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-03-30 header.b=IRK62GzT;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=tuAgFX0S;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 5/6/23 6:29 PM, Chris Leech wrote:
> @@ -4065,8 +4108,10 @@ iscsi_if_recv_msg(struct net *net, struct sk_buff *skb,
>  					      ev->u.c_session.cmds_max,
>  					      ev->u.c_session.queue_depth);
>  		break;
> +	/* MARK */

Got an extra comment in there.

>  	case ISCSI_UEVENT_CREATE_BOUND_SESSION:
> -		ep = iscsi_lookup_endpoint(ev->u.c_bound_session.ep_handle);
> +		ep = iscsi_lookup_endpoint(net,
> +					   ev->u.c_bound_session.ep_handle);

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1bbea295-69f6-80ad-2000-a48fb1da8eda%40oracle.com.
