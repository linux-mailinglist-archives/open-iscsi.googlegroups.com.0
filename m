Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB2FCT2IQMGQEVNWOVZA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id D12124D1EFD
	for <lists+open-iscsi@lfdr.de>; Tue,  8 Mar 2022 18:24:58 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id q2-20020a9d5782000000b005ad0c39a8b5sf16156847oth.2
        for <lists+open-iscsi@lfdr.de>; Tue, 08 Mar 2022 09:24:58 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1646760297; cv=pass;
        d=google.com; s=arc-20160816;
        b=WwT5bHejUKVT7ROe1J7+18DCEe/DN+iCJz3bRwZFM3Opg49U7yeT0l2U4vz1z4egsf
         YupyR4JqnAtzHLScGnT8QP1w++DpDTdjJu7rLey1l7mJTcSN4CL3zbU0aIC2ymJJlDsh
         mCa30/LkAIo5BSuLNVmPiUMm9GoFDmy6XpF0BgQNDcOqvobtHgyLAzCvdzgwc9QCAFWi
         8pxka05FeHlkENQWrQ/5s1d3mwJkXk0Lrtk3ANvPtDDOe78O+4USRfhoYODUyLp2cc91
         oT0SSZGHZvqpolm3jrNEwyFzfrbFVCT4J4Gb4ndzsYQ1Q7g1xJMQdalw8FoGdTKaGhLc
         wxNA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=MLLDd8Ip0MLgVP4xY+BSNYnfP8UY2lCu9xee3IDX/DI=;
        b=sGD7MB4xCgSyJFgbAE1Um25Bg41Q6MoXy8jbJMsI5D2gU/wwnmFw0oG//HBYe4EN/O
         iXOdNm2e2D62b0486IfCV8gtL/fSJ9ayaXnsK8E72W57xMbKlTJqvY2ieYrGPQ7E48CC
         8L7sBbmiRqoc56y3/k1V0Aw/7ZeXqfJyj1K3o0b5m6qnKOyMlWTQXDfJW987AwsFg4aF
         3gb/mtJlJ0R0Jsrl7HtHPQT6/YndistvPpmwS1wHpbDAC0GXyVIuEKiV22/kMw0K9e0y
         oS1bBP94XWzsJXZVVSH9TvMOQEuzZxOtzxroctEqjZKv0URxP3fmy1LAHidHdhsGV5Kh
         d/mQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=BRyLr2wO;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=OmyBdE9T;
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
        bh=MLLDd8Ip0MLgVP4xY+BSNYnfP8UY2lCu9xee3IDX/DI=;
        b=qp6bDGA5XKpss98uZ6utDSkbzrAnhwSCvY5lMtvx3xpBwEjDEM8ti6X7C9q9g5jQmC
         yUbNoB08tB9vu/Q4Kw8QG9+Fco6OcGgD/KzPesu6Plig4qaBzZKZHFLaGL4M6EPXp7iK
         6zWNZUOo9qrS1LsLw14vmEn5SZ4b3JDT3rAuRl/sJ+cDadVI4cy2fYLrpZLF97IXi/Wa
         i0u2FuTmnB6ZP8TTimEi21AQ8HnnYW5akcMYxo2z8E/LtVe8GqRdliA27ndzGdb6/G7+
         oYK9tuLTNSe7djyWKOswlJF+qlomHIVz8wOyc8cQgAHeHC7MI1U7TIL0++16z432prYg
         98vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MLLDd8Ip0MLgVP4xY+BSNYnfP8UY2lCu9xee3IDX/DI=;
        b=sdf/Lmlc4o6hiUqCrwnrH50s7gkI5ibDH3hrWQ3w8HPGnvZAxPrFxp2ADL1IAxh11X
         fC4kzdpEbOrSsPT++phvoM3Y2bV/bIArhL/FY7pb53MJbJzQW4YO9BPxUYQNeELkPd06
         iY2OE8fCP/tMb/OWxHaaSk0PHS2f7qX6jtl1aQuBnuk5X0n+hrh+STKsqu7thZvX1XzF
         crASnRdYn/S7xV299zEqqcJ1KSZX5kuIEFLBYKvRbCdr9HN366j5U1cbKdg+X4KS/DwR
         G6sNgJzLOwR7dV+YHZor+nOwKHshv4nADHDdXxIIUF1LIN+ma0E+8spZyEFczPot8KL/
         1tmA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533JE4WW66DdHyGu8/d8CYQnyhHieeIUDiskX59kMDlaSfenFJcA
	6wmBqYdWlryB6AJPIxlT0dQ=
X-Google-Smtp-Source: ABdhPJwgoBjcPEfIWRX/3JbhoYXZGdF5khUD3grziRfSOdv/uHxCuYVPEE7FpSLU4Qny3kRI5Q4P3g==
X-Received: by 2002:a9d:7987:0:b0:5af:ac0:379d with SMTP id h7-20020a9d7987000000b005af0ac0379dmr9077243otm.97.1646760297799;
        Tue, 08 Mar 2022 09:24:57 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:1797:b0:2d9:d2ad:f20a with SMTP id
 bg23-20020a056808179700b002d9d2adf20als2816561oib.11.gmail; Tue, 08 Mar 2022
 09:24:56 -0800 (PST)
X-Received: by 2002:a05:6808:1809:b0:2da:3311:3290 with SMTP id bh9-20020a056808180900b002da33113290mr353732oib.295.1646760296327;
        Tue, 08 Mar 2022 09:24:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646760296; cv=pass;
        d=google.com; s=arc-20160816;
        b=a6TxRRX68b3lfFWnWJSWgmXv/kGBOC1uBKRsvg2tu9uDA97Ctb6Tfq8WbiJ6wRWHHr
         +rBIzcC6t27WOWBgWR5KfjiAoSyjRNBoLZ0eGdy043zB6nlY3itkUJZY4DJvA3X4y1jP
         MKCVRTBnlJj8bv7LVJhhajX3QmQKtBxJv/0TZ9+j7PJgqEBAzudO5C9tKjONiL361Mht
         Q/okNAjQFUtMebLidKwiqeTmA8UD4LPfYmLLMnPXVM8hzfcxVMBfF4trqTL9mMa6mL39
         mfBFLFvdECuz5ThtxRmVpSZCsoVHPA2uBHAXmsHBi8kpLETNS6IPuojtJ32Kwr+rWiJx
         hpKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=6du0T4N6ilo5fMTttsSURmmis0Vlnh5pDDC36kg+e78=;
        b=K4qeHGMnR5STG2ko6RGhP1O19eMMwajtFteJccZdYmZptgyf/p04YST49AcVpqnRv7
         NKagoGrl7sm4k3ETwTtZndrxsgeXACguUkfuQqMieyUPBbBdE0/n1Bd5D1EEbwV+J16M
         K36hmkElEugHGez8lR0Yi4cLKq2Lnkfwk46Q+cGd84UyI+cj/lboP5Dp9ZpW/4ZJ4T/N
         ay8yYIU1xvYRqpbEmvfLYeG2+EePnOcuEhA/R8wXjPg0RSD55CLHa9cA/s/ZBY7+e2II
         YRLHQvFjqBlshXgvOkYKlHFar1O78pUH0wV07doz8GTirCl1yQjuSSszC0lcV88c+lvS
         cFJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=BRyLr2wO;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=OmyBdE9T;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id x6-20020aca3106000000b002da0dd73049si200014oix.4.2022.03.08.09.24.56
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2022 09:24:56 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 228GnNfu008771;
	Tue, 8 Mar 2022 17:24:55 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by mx0b-00069f02.pphosted.com with ESMTP id 3ekyraqda6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 08 Mar 2022 17:24:55 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 228HKPIh072219;
	Tue, 8 Mar 2022 17:24:53 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2107.outbound.protection.outlook.com [104.47.70.107])
	by userp3030.oracle.com with ESMTP id 3ekvyv42nn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 08 Mar 2022 17:24:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MHUCQZ90idMCcDPWkrz+Keq0UFDlqjkeretkRyxKOPN2aR0Rj6SLO514GESr1LIzVPXNRZ4KKIHcHU1TOY/vo9J2v27XOKt8vfIeIUBan4st8wANxJj5r9lt8NRfCgvn0FvPGOYpqc3CepVYL/yosm/8glCjm/YrTjHIiae2txDOALMhOSftKSHXTSYpnemJaEduUlxywlmYhWRltD3eVLAHcOVjOn5RmyMoB32OzZSl7ZaQlO8j61YaXw1+DR4/4s5uOJsK52Dqkmy7Dkxsh+V1KOxBW+A0FGTH1MMXuO4fBUmcsb3vqDYNlak1WBoqfAfmSFis4QR59cz8Pi09jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6du0T4N6ilo5fMTttsSURmmis0Vlnh5pDDC36kg+e78=;
 b=CxwjxJFHFf7Mq9EuU43QnwH5aFgJJBiZu49S0JKBtJE9I5C18gGoAbozFmoCPoIfBiAVxv4lr433Sc28vjGdyUAYP/nxWPAzRRN7Rxi9xKHFvzs1NMqO7LV7+6BjhRf5W+dtPzVLtyQCQjdoohbSbaeXhQy8sjOaWFYehSRL8LHZXFb02jB8Pl8ysSr+HlFThDK5/nQj7AVA8uMRnwSEID9wOsphm/VNMqdfw0XeWYoyrTkprujZxHTTStEY3i09D658hjEAk4QM5SS7WSc0a5SKSmCpDguRMdny61BRNRww0HNYMdbcn/43JXWlgH2j0IZYxevQIzbVxl7vJkvL8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 MN2PR10MB4064.namprd10.prod.outlook.com (2603:10b6:208:1ba::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.15; Tue, 8 Mar
 2022 17:24:51 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2%12]) with mapi id 15.20.5038.027; Tue, 8 Mar 2022
 17:24:50 +0000
Message-ID: <e4499a17-0278-5d16-f225-82217fb4f866@oracle.com>
Date: Tue, 8 Mar 2022 11:24:48 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v2 3/3] scsi:libiscsi: teardown iscsi_cls_conn gracefully
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
References: <20220309030916.2932316-1-haowenchao@huawei.com>
 <20220309030916.2932316-4-haowenchao@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20220309030916.2932316-4-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DS7PR07CA0024.namprd07.prod.outlook.com
 (2603:10b6:5:3af::6) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c330e603-761b-4898-592a-08da01288d51
X-MS-TrafficTypeDiagnostic: MN2PR10MB4064:EE_
X-Microsoft-Antispam-PRVS: <MN2PR10MB4064E4BF553F3B063DF3D044F1099@MN2PR10MB4064.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yZcqU2sDzJlBWPW2Vx8m7FNCBJ2NEHLDGckdUV/ad75QdpC4byk/+N+qi4RfETINZycgojOsaF7Iptd7xiqJ1WglBSvdJKtIXJgSj58x4PckLDTt/uzDV5YyLLVynb9CvJtxno2H5O9goYlbz1GU19j+BTQN8HYjq9FcIAMtfeeMIiMWVAI9pH5Phb2oncm5FDg+jFsYVwRUNJs+BzfClgsF1Nd76whfM8HIfmI6GJ9FL6Q48Y1egrfCJIE3v+VcRoe13OQK8/XW6fWjqULtlAIgosoFd9GWykEUCMlULSosh+PUWJgJZuxTLj3FrpEuiVUa8fbYmIsuxLESpmWnzZgquZshVP3e7gLn4hEjnGavJdNYwXxsGLSX6QDtF3qcNOUIHTGpJg53Smbae5/vxHyhCsegsrKo1BGquFldPd4Mt0DpIZFTFvVn7yEc2l5hRg/X5bRMpWodqGEH2SMIreMTJnUS4vgMbUoZq0SS1YsCV3sRePB3ChBUgvnB+VxkmNDMYann7oI8WTXYlbLXMfx1mWwh2P74p+ylGIesKOLyVxEcIOkZS9P0aqk2HUknIvh94MKPvUJr+ZC45V8s5OBjm7H1Adus+m7YnYk0htw8T5SlIJSHcOfeGhH/S7kdxtg8pGFHaxBVaAveiqxBT5z5ERcO49UbB6yIn91iW2gObao3gRJDrASnatooROBJFG0QUcKn4jw+sin94SNft6EjE9FTueFym6mShBzXQLnr8RJOMSq+pMoLMxi4tOu+
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(6486002)(6512007)(508600001)(2616005)(186003)(53546011)(31696002)(26005)(86362001)(83380400001)(31686004)(66476007)(8936002)(5660300002)(7416002)(4326008)(8676002)(66946007)(66556008)(36756003)(4744005)(2906002)(110136005)(316002)(54906003)(38100700002)(6506007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXlpOURQRyt5c0VKakdlSTBLd2l6U2lDOHVldlE5cFhQVjIxekFMMDFWYWl0?=
 =?utf-8?B?NGV0NjhrWXdKOWg1T2t2L1FwTXdlaDZYVDVJUzhEMHA5dUdlZ1NGRUxIYm1m?=
 =?utf-8?B?QUdjWjlGRnBZOGlTTEM2aGJHV0QwdzZaMGhyWnFFZEZyOFA2REEzNTkySGJL?=
 =?utf-8?B?RGtlazdDR2JDWURCVk5EWXlXMWY2RjY5bmh5NXpmTjB1ZHV1YUpKbm4rb3R3?=
 =?utf-8?B?WHhxbHJHV1ZuZ3FMY3JTVDhJdG9xY0hkVGpTSVR0dGpGeVl3V1NlLzdKc0hN?=
 =?utf-8?B?NWVyckdNTDdsSFBCdURnN0c5WGsrOHlHK1dmc1VFUTBoZXZvNHlKcS80RXZp?=
 =?utf-8?B?TWEvblVEdjlzMCt1U1kvQ2hwanZEKzJxNE5KTEhJZXhyV000b2VWaHNkNEVa?=
 =?utf-8?B?NjlmYXVKcHNFenY5NloxMXNJN2hIOGNadndSUHNxUzhHcHVBSjYrQ2syZFJZ?=
 =?utf-8?B?dEZ4bWVXTkRyMjBKWnQzRWE3Y2toTDlscmRYRUFvbkpnM2l3R1U2UDhaTXd1?=
 =?utf-8?B?WWVzTEg1K1hzdUNwWnk3RkZEZDBKOFd0aVR1ZjZwYWV1ZE5nbVlUcFpwZkty?=
 =?utf-8?B?Z2R0U1l4NUVoNVBjYXozWkJEZElkSEkvTDRDckNOSi9qZHM3YXV5dWZxZElz?=
 =?utf-8?B?KzlwOGgrd0NpMmcxQzQ5UzdxRUJuY0tIWHlEUFFWbVoxbWx5a09GcHlzWXcr?=
 =?utf-8?B?UFBLUjJTV2QyVTlqQ3Arc0ZpMkJUdS9jNCtsSi90UGlIQzFEdUtKSVJmcDA0?=
 =?utf-8?B?SDMzT1Z6VEM4RWtIc0M0WnBZeENma3hhVW1CSjhlUWFvSmt0MTRiMkFkMWhl?=
 =?utf-8?B?TXRyNFVmcko2S1BDSkhtYkhvMHMrYm1yMFVqanVYNzV3bks0ZEVPZko4a1BJ?=
 =?utf-8?B?bWpVYlptNE5mUEJab21FQldLbjl4ZXpOUFZPZnVVQldQYlQ1aU5sM1JBZ092?=
 =?utf-8?B?U1dHZUQxUlM5UXhtOVVzaXZGbEtVa2REOFZCS05xd1ZEUzU5TzFXb3dyMzNO?=
 =?utf-8?B?VjJaeTA2TjBxWG1SUWdjMXRya3VWRTQ1RFJ0bTJRa3o5ZzJRaFJPRkhqcmIx?=
 =?utf-8?B?UTkxNzF0b3RhTVpaVytlc3NvWHRhcGNlL0tXUzIzbkJFMGtRMW1xNVRpcVVT?=
 =?utf-8?B?Z2ZFQ0hkcjNDRlBOVDhrSHV4OTE4NWFUd0RMTEVUaXZCUXlLbDcxek1xa2VI?=
 =?utf-8?B?SjFXYjQ2SWE0bDZxOWF2R3J5L2lvTTBlbi9IbTNPZEZENEVkUEpRSmY5K3FQ?=
 =?utf-8?B?ZmxEci9iZUZQb0hMR1VLSHM4Z0NqOEYyRFFSaFBXSnVNeTdvdEp6NmppcjVj?=
 =?utf-8?B?YUJ4S3g0NFZWUGpIOEpYZWFvSUsyVGh2TWp5eHBhbmdJRUZRSDFtOHI2R012?=
 =?utf-8?B?cE1pRUhCZitnRnpQallQU2Y5QXVsRWE1SEFtQWVlN1RGb0lpZkhkRWxubGQ0?=
 =?utf-8?B?SHY4d0loWFVkRFdKQ1BTQ0dwc2JYaGxzeHhNOUNqK2NRYThSbnNrYjJPeWY3?=
 =?utf-8?B?MzRndHZ1Y2pTQkUzTUZyOWZ4VG8wMXYwdW5Ieks3ajRVendXWDhtT3BXdDlp?=
 =?utf-8?B?RnpQd0VBbmVOMHRtUUlkeDB0SmRWQW1jSzBXVm1WVTlDMXhsVTZIWnpOR21Y?=
 =?utf-8?B?RlUzcytYeld3NVBUMVIrQzJSZitHaDNaeStRVmhiZlQ2YXo0Y0UwVnZld0wr?=
 =?utf-8?B?TWh6VEN6b1kySVZnWTdSY1RlQUd2aGc2WXZhaFcvYVVlUDc0dDREd2FjRkpV?=
 =?utf-8?B?MUl0ZjlPZEE4SW5qUjY3d0VzYTh6TUtuZXNCbVd5eTRQUGxrS0xYWDlDV3dq?=
 =?utf-8?B?bW04YTZkSjVDMndBOXVvb1VFVWtnRTA5cnNtUmFKd3g3V0U4R1prUFNVQzkr?=
 =?utf-8?B?NTJtK1Avd2VVZThJRUFiSytHM0NmN2NNZTF5eDN6RExjUWlGK2RRYmNPUVpE?=
 =?utf-8?B?OWpTeGQ0WTNSaFNoUk9IemlyWUE2TGF6QUI5aVJiUkJlaC9kY29yQ1E2WW5z?=
 =?utf-8?B?NmJLdTJqN3N1c0pjY01iN0VaR3Q5WXpKdysyc0cvMXhTL2M5UzZhWE9LNjdV?=
 =?utf-8?B?SDJQSGI4N3N1ZnNHY0ZqUEljKzdUcXUzN1BmUk1jeGJLakxuVzJJOUZxVzU4?=
 =?utf-8?B?Q1dUUE03alZsRmVwcE9BRU1kRlFBS1htSkp3WSt3bExXaitzN1NRMlVPZXNW?=
 =?utf-8?B?eGxOM0V1akRzNTNObVpCZXlpWjBsOVZlNUlGMWx4ZVZCdmQ3Q0xoZFp3Z2lJ?=
 =?utf-8?B?TVF5WEQyMmNacFF0LzRGaWV0MDF3PT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c330e603-761b-4898-592a-08da01288d51
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2022 17:24:50.8522
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yuOV/YTrfeM3ELxmajOrsez/rWFIJT5ugJ5Sjk5tjsgJ6rCpBo9m19vn30nSXYhSQxyK+wf192KLAJyPexAJQXdCCrlU+a0M2KzWF8wJuGo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4064
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10280 signatures=690848
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxscore=0
 suspectscore=0 bulkscore=0 mlxlogscore=836 adultscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203080090
X-Proofpoint-GUID: J8fOavkFQEIzGeQyz32AvKvqD_gBN8cl
X-Proofpoint-ORIG-GUID: J8fOavkFQEIzGeQyz32AvKvqD_gBN8cl
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=BRyLr2wO;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=OmyBdE9T;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 3/8/22 9:09 PM, Wenchao Hao wrote:
> @@ -3143,8 +3145,6 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
>  	mutex_unlock(&session->eh_mutex);
>  
>  	iscsi_destroy_conn(cls_conn);

This should then be a iscsi_put_conn.

So basically it balances out.

iscsi_alloc_conn requires iscsi_put_conn. The put releases what is
done in the alloc. The put on the parent is done in the release though.

iscsi_add_conn requires iscsi_remove_conn. The remove undoes what
was done in the add

We don't want a iscsi_destroy_conn which does a iscsi_free_conn
because it makes it confusing.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e4499a17-0278-5d16-f225-82217fb4f866%40oracle.com.
