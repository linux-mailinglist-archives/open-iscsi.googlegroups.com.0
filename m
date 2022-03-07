Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB5O5TCIQMGQEU674ZDI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id C01594D03BE
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Mar 2022 17:12:39 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id 5-20020a056e0211a500b002c6552a9c5fsf511779ilj.22
        for <lists+open-iscsi@lfdr.de>; Mon, 07 Mar 2022 08:12:39 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1646669558; cv=pass;
        d=google.com; s=arc-20160816;
        b=yXRecBX1sVwlMy01T9lIOoGt7/D0IH3yKM3A9Nwx8gHkwYz9twC8svM09nW/1xfcmM
         gvztoNSqBPcV3vSm1kvaa/oVyFsIXGjw4P0JgPT34GXlFCmfMaPQ7ZnD+uNxPHTY293F
         lPDkf0DikVaCsU8Eb6wUhsqIGJso53NFB0cGeqMZn6+vZ8QjiTAwGwh39MxNdtR+LK8Y
         6umy2U/kGNu7kVQbR/v86f11L5w+r33WaIJLHSzx7WbfaGMARHgQJfHYG6NnrDqkyMzA
         THxN0NHPH6f2a5HrmarAk+OGDmH6cpDCfS14R1JKEkPhGcKBYBIfU/qEu4F7gKy1P+rN
         GhuQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=+3GNsa8dDQWDN4ZF3X9+Wb3aRvGn0c27TdNulv5GIXQ=;
        b=dnfNyYPqUWjo1X15vIiVfiMDjWd/9H24TAdSk0p1Lkaw7h44RVpoPPiKWsXtFeX8yT
         ZGoaDr+elLvu17oGN1/BEXF4Nhg51T26iOtdHPojn8YNjzIBQ/4s6q9FMg3U5QhonRoi
         XdfUUnb+MB0aaX4rPloSTAgDylPBB0GiR1kTk/tak4OLQ1k6FKPSMnU+12Ob/E8KPzpO
         aGYjzgs+V8hwYrGCy+Eujl6K/5UbHveW6WCB+oaB/HyyjrNjQQeCfaQ0iBq2UAUiR47V
         TzHXUHUNE8Aalt73O8eSrNk+dX/h13U+4zsCRsfLqWFxc7rxqOomPmHRWwR043KlopbQ
         Yz+g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=N9oZWHYh;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=X3kqQkhs;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+3GNsa8dDQWDN4ZF3X9+Wb3aRvGn0c27TdNulv5GIXQ=;
        b=GYpsI3lTBKy6SCATKCK1MKQaYnLwYsNVKeJXJUBVgYSg3TLqxZxmxcnPmX7YokgZ6u
         Yrpyq7QoY/EzdLPBlgsGWwVWd4y4yInzJVx3BwaGEUCwMFcdWNqK1WPXah1WWoM/Rc+G
         mmZMGxxNpoWao2pEp4OG5s8AR4SU0QqIidD5pKLHEtcmaphrB/BLe6UHV5CueIBhEL2V
         XfwKPOCTG7MnA2NjGG52fIHf0E8NxAe9+2HrGAe5/d9E/hjrmmas2nF9nTqvydC5tF7S
         I5LyOvbO/KoCpGIMllK/7ZkHE4tg5FeXntcpZisqTdssGy9WlS/HoBAOtCoR5k3Ryvnk
         nDtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+3GNsa8dDQWDN4ZF3X9+Wb3aRvGn0c27TdNulv5GIXQ=;
        b=2bsPZqpKlZct4M5SGGfuCtsDwufPPqwU11oYY6stUQE43l2YALj1aHr+EN9Tj00VoH
         tbEg9DkIqmCS7AsX2w4Mb7LilDYwYX/mM6slfdvNBYGQU/2Fb1lvsvIJ+IBT61JP73z7
         RLp8SNnSBbimHvuCPmmKVaN20xmLbhyey3l8wRYXEikMvoDGvYWtLQRFvfJ6pmoQ4PQt
         0p2L7emVJPT/3LmcpmhMwT1FX/4jlPlcUmNOrYzCoFiLmbysqYpqZjxGncvfAteswUhb
         6JC+jOwzarniDbjnzfbKYpNieJu26Z/i12YeioVuaOQou8duWayzOEjWbE3uQ8f39G3k
         KBIw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533WrmrlUPPjawKTk5dRAUMwk0kxVrvTl2FyPCsREVUWpKFC5w3T
	xOEM3tpblVI98B9Y2uprqsA=
X-Google-Smtp-Source: ABdhPJzX7R/BseYDA5VqxsSoG7ulv6WyKCM/w24LqVojPfjJodGBP/TdJrsyHKxgkfehXVwUqlEGcg==
X-Received: by 2002:a5e:8d15:0:b0:645:c856:e84a with SMTP id m21-20020a5e8d15000000b00645c856e84amr4863362ioj.84.1646669558412;
        Mon, 07 Mar 2022 08:12:38 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:de4a:0:b0:2c6:1570:ca65 with SMTP id e10-20020a92de4a000000b002c61570ca65ls1441280ilr.11.gmail;
 Mon, 07 Mar 2022 08:12:37 -0800 (PST)
X-Received: by 2002:a05:6e02:1949:b0:2c2:5b61:80cd with SMTP id x9-20020a056e02194900b002c25b6180cdmr12384736ilu.152.1646669557053;
        Mon, 07 Mar 2022 08:12:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646669557; cv=pass;
        d=google.com; s=arc-20160816;
        b=pvOsUfYUFzYaANCGh36kT3wrB2CV3io4LV0QE5D4A0LbTUbAVyUHVq9sGuITQ2Sz5N
         Fd5lHn0ITkSl1lf3AQuukF109jxIcdRNH7rMGblzartIiPS8oDdcOyfO+nMAtF1fubVN
         bJq38derhiixNCB1PksMV0NnHLeeQ4hi/sTMyaJqIR9LIdQRRiYRz3qCFgL1kmL1nUUQ
         sP/txkKUAvsRcAxiGY71OXYDUD+SwnYvcs1HZN/jN1ir+nmiqZ+S+p0Lti7ZKZHwP3wG
         W8+j+q+3m568iGb6alwUNIJ99e5W3yrKDOKup9TFlypqbfx+CLJyJGrm6P0WLVgwGwjK
         9rDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=WKx8QLaKOarsxItVfC+evWuet9zOnLhQO7ZRmT1w6CA=;
        b=AQetZLAZCBmWYj9keAhRmBv99om9IJ4GABXy1OE1h4b/E1vn+hqwGWwcBCzoECbJM8
         8rui82Jqi0Oxe3Tth8lp2Dgw4q4XJt24DsIJXEr0Mbnu1vy9ZvL3BKxpoZ0vUYE5EBc7
         kksh32xCDSAia1tUC/9ydQMGw0ehaqzf66mfQi18qyCccDfyjImoTnuxj2H6WoyHTJJx
         tz7pOC58tUCU6oc8VTIolUE6Ywqup5emHw5K4qq9gNN2xYJ5Wvx6zgLdqxLDvfpNP0ug
         DJIYtNeVz2sVtWNz/xIQwDcQodIUNSX7icscuuQmBVaycn1YM2RlWEyiInkBi30LuQ/A
         v+IQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=N9oZWHYh;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=X3kqQkhs;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id o15-20020a056638268f00b00317ca213626si158880jat.6.2022.03.07.08.12.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2022 08:12:37 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 227F044R029198;
	Mon, 7 Mar 2022 16:12:36 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by mx0b-00069f02.pphosted.com with ESMTP id 3ekyfsc9jt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 07 Mar 2022 16:12:34 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 227G5XM7136959;
	Mon, 7 Mar 2022 16:12:28 GMT
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam07lp2042.outbound.protection.outlook.com [104.47.56.42])
	by aserp3030.oracle.com with ESMTP id 3ekwwb40vp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 07 Mar 2022 16:12:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AMq/ERvubuY1KDU4osQcNHZl92MdqElVQ0ffVTheJDGkaUnSyn/MXFrL4bQCCJ12e9fnYgNzEEiJrilqUp2tCIChsQ48rPe471AouMCgcaulki3ELP6Ot/Q6SG5S5qJpJI6ua8qNwSDngMtqhvxRbvvKde7e4Zu+lGYEUGk8NpCmZY1GXiGFsjbnXdnJkDXSgYsuiqkl2Me/PUcKGrKW1ylbC8BGek/VhGkAuzmkXkSRJrxoTrNKlxz78K3QnlmpZoXC3FPuhbr/uAUwlRzZi3gkuQ/enpXbqQEIBzziWgGgm2wzxp6gti55G+LF3ZwcNNS8DqIc1tZxuoaqIrBMIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WKx8QLaKOarsxItVfC+evWuet9zOnLhQO7ZRmT1w6CA=;
 b=C2bKGNTZ6q32lvnYGwGOoQeeakbtge+LmnbWsM++tGmVFarY4rGygAGWthVp67VM1paTM2lGJIK9TeDNzYi5gE3W6PiF+tc2GGuT8DIBV42dE3fPC0NeAoWr2qDlmXE5qAIOo/giKEKdEvmh4Pi++oUK0ma9j00QcPE69X8W2Ew260sJfoj+/tT/ixlCyQ+qdoKpE/varfv9rTo1FgrFjbim0e7BncsWf25XeThFhLNvQQZEr5rJtSI0vdPIBneCb4kegdXe8deq8oGgPFXDfz88mBbpCy9RTDzSr3WXE7T6za6U9xbgtrfXJReccQ5SqGDWQMmAmQISIcAVIqgAJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 CY4PR10MB2024.namprd10.prod.outlook.com (2603:10b6:903:125::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.13; Mon, 7 Mar
 2022 16:12:26 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2%12]) with mapi id 15.20.5038.027; Mon, 7 Mar 2022
 16:12:26 +0000
Message-ID: <3e714766-f2cd-3bca-3611-22a87848fec7@oracle.com>
Date: Mon, 7 Mar 2022 10:12:25 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH 0/2]scsi:libiscsi: Add iscsi_cls_conn device to sysfs
 correctly
Content-Language: en-US
To: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>
References: <20220308005654.2281343-1-haowenchao@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20220308005654.2281343-1-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DM5PR18CA0093.namprd18.prod.outlook.com (2603:10b6:3:3::31)
 To DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 18153971-f3ef-49f5-c28a-08da0055455e
X-MS-TrafficTypeDiagnostic: CY4PR10MB2024:EE_
X-Microsoft-Antispam-PRVS: <CY4PR10MB2024B070C968AA204DFAF021F1089@CY4PR10MB2024.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Tr3+pvLWukkmJt0F4TNXmXgTgwAEc4JeuGmoQoTBF9U5VqPtgtUvUQkzl6Kab2zy4WFHkC65IMlM/rDEkK7JA4FR7SgDZDll53iNWeG10PfR31s/dnvg5ViE/vp/AZ4PfarKxLsSqnPjgaF7Oa0RddT+qsod2tV+jLsvo+8g5/3Q9+WI1rihSrBUMJxGS/z4FRr/pttfMJPEPJ5UqUtO/wUMKjHFjj3m6QTtddX58UX+PneYcTj6DNYj4Ej6UtQ9CCQ5GQmJFB6JzuF4Hk7QJgewl7BpaNiPa2NzOVwVeIN0ViBIbooYX+KmN4DCVaRdaPATM1PG6FrcZKmIp/43nme87VKmGRfLJ0gMtuK0yuX16A0ATqNsbJqpjipdixe7B42uEWF60A7ccYPGgdRvOGlJmtxzTjR4tQ3l8nLfbh5ihqgaCX0ccDBgPGPwH27HyJYtgFRU/FtyB+Vrcv6GrFqQnN88OG9SnpmlC9o9t4l3/g3axmfD3AJ57uALX2hFfHJq3fdCsHkTQShLntPix1rT78fSm1CI1QdMQTqZraTrDfs5w+Tie4NQc+kNhMDbkd6Pm2/K866pZKJ9vrQl8ovyofguYeaZtqoTZP+ylPg9Q0x9EboJdpvaQc7VjdLHJn2bUfylW4V6naWINTve+G3usYFCW1wDRveFWVTXCwAE3SLSYBuNpha7elSOC0tGZks+I9gQPYOM/9d72RVVLPqm8Kh96b1urS3RaEDAb6g=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(6506007)(6512007)(6486002)(508600001)(53546011)(26005)(186003)(31686004)(36756003)(54906003)(66946007)(38100700002)(66476007)(4326008)(8676002)(66556008)(316002)(8936002)(2616005)(2906002)(5660300002)(31696002)(86362001)(110136005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UURYRFZlbkVLQ21GT2JUNDFLWEVnSGVYNVdSbTNSTzNMN2FlRTc4NUZYVHdt?=
 =?utf-8?B?MDZVbjV1ZU5wZW92dU5VeDFKQ0QvVENXbTl1UG44YkNIWHhtL2Z0NmhkbWNQ?=
 =?utf-8?B?OERlVXBnbTVQM1BBSzJ4UXB5N0JYZzM2K0tCNTFBbmhwZnNaN3M0ZVdHMnJE?=
 =?utf-8?B?M2hXWG5nM0xha0pPakRSZElzaEZ0d1dxaitWVnNHWlFNUis2LzZkYWhtS2Fx?=
 =?utf-8?B?NC9hR1M1R3dDUEFPZjJlY0FlcE5mdDRVaXJnNWZuUzlRdTFWdVlhem9xbGJK?=
 =?utf-8?B?R0xCVTJOVWtFUUgrSjVRd2xDa1VXbi9KQ2Z0V1l0Y1BJWFdITEtTelhyeU5X?=
 =?utf-8?B?UU44d2JDN05tU3RaUUhYRjM4UXpaYmxOTkwyRlNhZytwTG5zSUtKeTcyL1kz?=
 =?utf-8?B?eVVCQ0doTGFnam1tVkgyN1R5OWg2bFhJQ0Fyb1U3bUxxOFRWd20zOXZFUGUw?=
 =?utf-8?B?dWgvdlVVN3Vmbk5YbS8zY1c1dk9rNk5yRDRzdGtlR0NxUHVJNE5sV3RhZm1j?=
 =?utf-8?B?Q1BPanVDN2MvckhsaVd5ZHo1T1ZtdlA4ZkswRmllYi8wQnJIWXF4YksvMmNM?=
 =?utf-8?B?Qk55UDZZL2JQMlY5ZlFzRWwxek1SYmdZdC9HY3B6QThZVE1HR0QrRkljUitW?=
 =?utf-8?B?VGg4UXRoKzl6dDNodGtDa04yMnBPT2lDcHZiVFIybWw1aFVHS2hIY3pwRkpD?=
 =?utf-8?B?U051ZnlPVVBoK2J3SEcwa0xTdUZvbTh1dm5KTXF4UGl3UE51K1g2d01MU0I2?=
 =?utf-8?B?aXlYWHJqdUhLYTFaYVZRV2hvTXJvcHFLbDRMa1NpQ0ViaG92MEtUTnFSaEFV?=
 =?utf-8?B?MmJuaVk2d3hFL1NuYXlyL2ZkVE94alkrNXZKVXpybW5xT2xkWXBIWlFhZzVY?=
 =?utf-8?B?a2dMMGJ1NVJUdXhuMGZJYjJ5SmkyOHBQc0RpU0FrdmpIZDVjYytsbVdYcWdK?=
 =?utf-8?B?dmdaeFh0WEJJd3k5Nm45WGwrVXdLOGZvS1k1VlpmT2QvYTFXeWEvRzNxOVdr?=
 =?utf-8?B?U01iQUNSWTRiSS9yU1pwUE5SMUQyczdpTGNCM051T2dNT0lrM25zOTB3OE9q?=
 =?utf-8?B?R1dFZFMrMVR4N2Z0SlduOHR0ZXBjekR5NzJWZUlwb01id0tyOWgvNUxKWWNv?=
 =?utf-8?B?Z05rUGpVNElURitiaFYyWXNYQ0VPVHJ4SStGemRsOGNPaGlaQVMzU01SSHdr?=
 =?utf-8?B?ZlBaMW1uSGhMZDIxNlg2aGRNTlRXN2dCRzhoZUIrQ2JNZFBEVEFVNjJWczkw?=
 =?utf-8?B?akZpYWIxN1NVWDdFVkM3SGJ4NG5CYjJSdkI5aFdsTnJCTGJveUM1a2NVWWxv?=
 =?utf-8?B?UG5DZW1DcGREcE9ZU1E2dmI3dEhLcXliSEk3Vk1oMktMOTZPR25nd04xNVRz?=
 =?utf-8?B?eDE1ajA5RkpqL01xUFNmbTNYYXdIemlBQ0FFd1p0c1hFUTN2ZlFybkdhOTQ5?=
 =?utf-8?B?WlFGaUZZOVltb3l6MDk0SUozbUdnZWZPWlJOUE56cFdpR0piU0pSdnZLUXU3?=
 =?utf-8?B?YkhDKzNwYlVvOTQ4eDdCZ0FnRGpsVXpMSCtUR1BmVk5ocEE0dlVoZUd3cFYr?=
 =?utf-8?B?SlNUdWo5b3JsSXk1ZnUzQkVlZkRXNldUeHRHOVpKd1lqK0ZvVWtvOFRNaUpt?=
 =?utf-8?B?djJiSFlreXdUTnJjSWxnd3BLeGZqNEg0enRpQmhuc1NwYzVEQkIwUzhvaGlV?=
 =?utf-8?B?ZnBJaWFwWmRYNy9RUGpUUGhXbjUyeHd1QkZldU1ybk81MFk2Uk5xNktmd2h2?=
 =?utf-8?B?RVRrQytwVzdpSlkzdk9UcW9YSWpkMzRjUGxKOVRBL1RqVCtkdFQxTXpsZTkz?=
 =?utf-8?B?WE5BSTVYSHZiVFJOd1podytIUkF3cXRHZERueUJNcEJpT1FYdlVRdlViaUdu?=
 =?utf-8?B?Uzg1SkZmWmhkOXFlZndUNXFYeVdjU2RuSmhMZWxRbXVIS3JuMURHdzE4b2M5?=
 =?utf-8?B?Vzk3VlY0ZHBKV1Q0TE41VGFicisxemdhMnB2Z0dIZG9iZ0Z6M0hqUlc4MHJ2?=
 =?utf-8?B?QWh1RjAzK3lPeWZ0MXBncVlFT3hKRW5hR1I4elFQRHJIUWFpZ1ZCZ2xLUTB6?=
 =?utf-8?B?SVppZ3RuSEsvUkJMOXpKdXJXcGZvQ3hEdy83aVV4NDhLdmM4NU44czBLZVE2?=
 =?utf-8?B?bUpSdFp4TU5CRlhpWUhaQWRTK2dKT01valJsVW00blhIS3FqTXFRTlNiZFM5?=
 =?utf-8?B?OFlhbHBpbEk1Qk5PMG9LMWJTSEdzQmc4cHhiUlFMSzNPOTA2M2RtVWh0OWNR?=
 =?utf-8?B?RlowVHhTS3ViMktrcHFIME1BVkJnPT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18153971-f3ef-49f5-c28a-08da0055455e
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2022 16:12:26.3811
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UosB/MSbsMmLZwmbtZnRnyidk0/TuN7eKrGtPv3c+OcmU75xSvaKviv79jr7i+PJfi/zIvPlg7mUYxBBT/tXlJpoPD6ZCdCjPCR10qajW1E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR10MB2024
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10279 signatures=690470
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=800 spamscore=0
 phishscore=0 bulkscore=0 adultscore=0 malwarescore=0 suspectscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203070094
X-Proofpoint-GUID: kTqFDDNYy3eXqL9O3ehEytKv0T8qj_Au
X-Proofpoint-ORIG-GUID: kTqFDDNYy3eXqL9O3ehEytKv0T8qj_Au
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=N9oZWHYh;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=X3kqQkhs;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
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

On 3/7/22 6:56 PM, Wenchao Hao wrote:
> We found a NULL pointer dereference in iscsi_sw_tcp_conn_get_param(),
> the root reason is we did sysfs addition wrong.
> 
> iscsi_create_conn() expose iscsi_cls_conn to sysfs while the related
> resources are not initialized. So we should delay the calling of
> device_add() until these resources has been initialized.
> 
> This patchset solve this issue by changing iscsi_conn_setup() and works 
> well for iscsi_tcp.
> 

Overall I think you need to also fix up the drivers. It just makes it a
nicer driver API where the LLDs don't know about sysfs and doesn't have
to worry about it.

Let's start with just this first piece where we handle sysfs in the lib
and class like you are doing in this patchset. We can do the LLDs
interaction with the lib in a second patchset to make this easier and fix
the initial bug and cleanup some code.

In a separate patchset, we can then go deeper and maybe just merge/kill some
of the lib/class interface since every driver except qla4xxx hooks into the
lib. So we have this distinction just for that one driver's session mode
and that doesn't make a lot of sense.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/3e714766-f2cd-3bca-3611-22a87848fec7%40oracle.com.
