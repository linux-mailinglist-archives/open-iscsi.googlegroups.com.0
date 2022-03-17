Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBCE6ZWIQMGQEYDQE54A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8A44DC998
	for <lists+open-iscsi@lfdr.de>; Thu, 17 Mar 2022 16:08:59 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id j16-20020ab01850000000b003517f6bb1easf2555610uag.10
        for <lists+open-iscsi@lfdr.de>; Thu, 17 Mar 2022 08:08:59 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1647529738; cv=pass;
        d=google.com; s=arc-20160816;
        b=UDmZLsh5nznp/Rgzcd209JGyu/8sJonKqcLb+AB3ArGmt5Sme1zt4saieg2b9q5di2
         zl/7FTYvuKvSAWvhgOw46przSevqnTZ3B0krpN306iPmBBBMUu2bAS2VfeTdN5IBhfp5
         4/Zh+6JFrtPdqBqmJKwUWka4YDp8vCBzjgoukTu2S8JC0xeO1cte/R50iAlbYbZRb9tH
         vduALHELeRUjfXe+eh9svyZYnyTGZudZqTOkmrLMcoYUKZSGFVbQRU+85BOIZlXqLDtz
         ODaRecMKcV6+qI9zo61JsT8DL1nLB84hJOmsfiJKYchB1JLvlYWYt2xbMVoyxUtn73JM
         gyPw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=KehS/B8WckP8ZAgek1wxGpwo0pwjfcHAzg5c9Pf1zKY=;
        b=bs1YG6rTJJytBT0f2UAgcYWw+QsnDgLCE80NcLXFtkyx9qUQ20Ul05P6pOzQGR7ksU
         yEYx28lP8ay69J+FfdISrWXHWrUdzRho9NCzzY9KzVoD5iDelNiCSf5wyJkoIuJeKI75
         TBUUQ4AGf0HrtCgKdu9Ra1ozBk99XjOT00Glr8BC8HhsB6zzQfzWvMbZQQgrfGweTaBq
         orgAh7W73HqdfbYqnv5sjd28ujJvxmH0uamB1oPxiKzCDnFuFZjyU03+6GZj7hlDb/jK
         OR0nG7/XDvg3xLxO15m3cIofNZ2yfoiBuX58jbw1SJQRuiBSCwqe41qhlHIfflGhPp3K
         ku5Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=Q67J+OhE;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=awUGhSb7;
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
        bh=KehS/B8WckP8ZAgek1wxGpwo0pwjfcHAzg5c9Pf1zKY=;
        b=G4gnlHEGhkXDSPmWSV5sSrue70ay2N0LbKkqY7OHDM9cIYIwU/s+gZ9FDKnVUqiAjM
         6soRS5w2h4118lyD+6tjus44PMVrFKXK0ySYUlpKWYVJzhl/j4qmSYuWs6vhAJoDLPK4
         Flzt2w1c+xmO8QAMsSH1fUg2T5Ys4jccQYRAtO2lk03XWOidBqrsYLJEAI1QGScEaFdn
         oeizSgneo7LZKlUoB8G0e+HINbs9CobQ2w7grCoyuSgBhwwx+//ehbBtQx6X3zrpZ8a9
         v5V8BXvPc90sz80HFd4i128TdbPF/fBV8dxNizMhEpSsqMax4zBFhpXhgvKm7T8Kt6ar
         2t3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KehS/B8WckP8ZAgek1wxGpwo0pwjfcHAzg5c9Pf1zKY=;
        b=Sft5IAcxB01aBzaETjPHlxZzUCH4zzkIzaSwGocYv0FUGiB+6b6cav1Y/SpZMzBqef
         YB2SGpN31AvIi8MaBSaP8I6oVKlVg2PNl2bbgFhOD513YmSV6Uoyv+XBg/CBBS55/kBb
         2Uyh+mn1f2/kyoA9cj+dKmzIf8x3xl54ZjpMADexfKavsJTlw+H0j1eK15wNu3Lk0enR
         KJ6CcP0aC03ZivCGLJQw2+lJ+9AscXfEg3ax5elafzZmPCWGPq9HTdEsv15tO86Y3jq4
         5EO0KRRa75xnba7/QyufQ7f/6KHEKYfC1w6V0+s/kByWMg9pIuOA3lq/M/CXKay9f5zh
         E1ig==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532NOpMvWLnrmLZRUhov+s6ewCa1t9167Nh+k8lcmncOsvmJmxuO
	mUzOiFvbYPROsEyRBjNFoPI=
X-Google-Smtp-Source: ABdhPJwdAPqISee809d4RkX+3bexjHDt+608s8oIeYsoanybRfajkqboh2lj95Ml8+IxNsJHrggO0A==
X-Received: by 2002:a67:b14a:0:b0:324:c014:d98e with SMTP id z10-20020a67b14a000000b00324c014d98emr2161075vsl.19.1647529738074;
        Thu, 17 Mar 2022 08:08:58 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ab0:3c47:0:b0:353:f64f:58f3 with SMTP id u7-20020ab03c47000000b00353f64f58f3ls88355uaw.7.gmail;
 Thu, 17 Mar 2022 08:08:56 -0700 (PDT)
X-Received: by 2002:ab0:7095:0:b0:353:15d8:94f3 with SMTP id m21-20020ab07095000000b0035315d894f3mr1603310ual.21.1647529736306;
        Thu, 17 Mar 2022 08:08:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1647529736; cv=pass;
        d=google.com; s=arc-20160816;
        b=UXfE5CSRHEZYbYHAe7KHR85z000VjD7JN5Ru8YOVgbRrqLb+sjqxRAuj7K/AlEGDhD
         JnXqhknF+4eYgE+gaNj6DUJmJjCUamJOBMFz63zA0aebHL90VZRcwVyHCNXtpffoNYV5
         7LOx889M2aJ6YRudNu51vTEd8KkCt7Jg/OoNOPKWxhLE+LQDyVyV9O/LigopjPVqkeBa
         EKbblYN0wyEW/+zJhh6H2vX7h43efnZTM0YGsjFrHDRhvxAAvHWhIuh/1yPUlJckA+Ss
         tRjhhBvjtDAfNM4VIVFSIGvp/2sY/tBBO7D5KFf+jFI4MqzsuR6mK5gvpeipV6/TWFVg
         hjiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=rW8U3rq5I/5WdxDDeEVvNs4S4VSNctO3hX5tb3bJWi0=;
        b=TCEeIcxWTo5DC+LUrtubXH8V7WD4h+jzMtNQnvPVBJSe+lGiNWB5tiV4Hc9GP/iN+P
         Y/Z28p5KTf+MOEfYDibLMG+KbqWBJgBmhP8mNhcV3pqbREoKhh0LebZoGODydyYXQzqA
         f2IDGO5xeHpk88leYAQjidGuRoJMtxXpqIOQLVyVSxVWodRMfUjG+R/gyejnRR4c35bs
         yqWoEm75u2lERRDH0u3ardSCMg7HcsXGLwW0H70r2YzlDPlvN9q0aztMwJiHiq1MWZ40
         NS7Ni9zX/lFL0aUButmVT+G8STGD/j9sRj1GKRXZEVRAlrldlEFdlTXKayy0pp0HUWdj
         dIww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=Q67J+OhE;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=awUGhSb7;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id x8-20020a67e888000000b00320914873cfsi370408vsn.2.2022.03.17.08.08.56
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2022 08:08:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 22HDPBVd005609;
	Thu, 17 Mar 2022 15:08:55 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by mx0b-00069f02.pphosted.com with ESMTP id 3et60rskxm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 17 Mar 2022 15:08:54 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 22HF6Er0114037;
	Thu, 17 Mar 2022 15:08:51 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2176.outbound.protection.outlook.com [104.47.58.176])
	by userp3020.oracle.com with ESMTP id 3et659jsrt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 17 Mar 2022 15:08:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cvu3VI9MHTTD9espcsfCqo5NNnRtYLRhRQ4G9XY6zt1pbG6xw2jpCpT46mH/KzWeWOChmtX81s7T8zp3QVjLCqFvECrDt9HMrERzkyOP7DAW0h5CgLQcWgvVR0cBDHSL/F6Dybr1XYa5bpG0qvVjj3ec+i0QQh0+1toPDj77oK/Kgt2YiwejTLzKTHoNtv+rfjJHLm0sEzrXHnBrRxljtUb49AyyqL82+Zng3lroCirUWvUMVG/G+6BuutYJYBNHjLn4t8aaRINdv4AILL0iL2k+8tSsOrPVPDT8pRnrkeEba0y4z/2uisRral0gfiZUfcxGm6KLDBaJhsoINNyN5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rW8U3rq5I/5WdxDDeEVvNs4S4VSNctO3hX5tb3bJWi0=;
 b=KeAmhafKtwTDEybXk7K67CoUeMb5iEWTKdmgRDUgtjvqw5pgew/hemohIHpaOhBnJCSe86HgtJhsXT3+sAA1W/exMMaU4pcoq9QZGY3qsxJKrRQSrke3J2Tf6/USKb+LUifc7OOibUAxiGNq7yJMAq1tMie99KdmtljGkXjZ9r2GSmAjMtSpnhIuMyKdgwkE+aOVN1ITOwuNBDnxbGIuOzDiK/gwEOFBzHiQQhjXAb+tNN/cBN11uL6Hbt5pBXptYn6YyaRfyZ2e3XU9/8p6H+wJLExjSJUY+veDNpwLYefSGlBP4qTcBcCQEKENIHmZ6FHvQgqK2S0j/xX1NmwTWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 SN6PR10MB2429.namprd10.prod.outlook.com (2603:10b6:805:50::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5081.14; Thu, 17 Mar 2022 15:08:49 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2%12]) with mapi id 15.20.5081.017; Thu, 17 Mar 2022
 15:08:49 +0000
Message-ID: <82d04e94-86e1-fcd6-80c3-3b800f55cb7a@oracle.com>
Date: Thu, 17 Mar 2022 10:08:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] scsi:libiscsi: remove unnecessary memset in
 iscsi_conn_setup
Content-Language: en-US
To: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Zhiqiang Liu <liuzhiqiang26@huawei.com>, Wu Bo <wubo40@huawei.com>,
        linfeilong@huawei.com
References: <20220317150116.194140-1-haowenchao@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20220317150116.194140-1-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DM3PR03CA0013.namprd03.prod.outlook.com
 (2603:10b6:0:50::23) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5b42110b-e4b5-41e2-1f4c-08da08280a31
X-MS-TrafficTypeDiagnostic: SN6PR10MB2429:EE_
X-Microsoft-Antispam-PRVS: <SN6PR10MB24297B0C8DE83924C0A1B559F1129@SN6PR10MB2429.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bg0jyLgBqykP4HwqbzE/OXBheE1S7K0aSK5FEr2rLOu1mxnyr9/EjV5w4k+lrKm3BQ8LG0v2GB+tQR007TvmZxbCwptBkuMvSiwJYpSvR6yEuOXxzULoWfFrZLOGi9FMGs2i4cw+K8MKU4P0gUjphkug18VgzXrFFgzPhJZxNBFyrunULcEoJcZajJUKTWYLSQqbaaHbazEa32SaxiOHYWEI/TC7rO21qtnxut0q0fboRIa70XBmDTJxTeCr55hI3g439YzCiqQ7ZQWmYQTGlztKCP7a/+4RaEXH3PTCriPwz0+MdYryVUuMalPBsFPJoIbnQMLGDlL07IH+8eRSC5/IvArH2x+GrKQi7b1VOZkwo7lgqSMlJB2IESB8F9OOluQMkip5Wg+u3MWSSdaW8VxFRqRRk86PzkGn4x2b9hhv400e4mDzENvBLx9r2iAS/npnXYRDhWB8OlAsF/Y/C5EQ7mKn5iFAGFEEoT+wHFQL7GRK9rxnYF2yGT0sUgFzFeUxQNpPK+OGFKyrBSbYAH9blfEtDpeBqJ2u1wmWyPMrJ3WFrsZJ9IErAOouzUC82NkocBDBWRzqDp0Gu0j+f21ecFQtzanGa8jKQ18dq+7DWEZwZLqcX/68Q6tCOBcP36r6sLGMbTZey/f2/QNLCzkwoYNogwmcdVnD4p7UasXN1alBL8QQK2mkJyQicfvBUW953x4m9aTx1iSiCLc0gkpdYO1KGwjsOH6Dn/ouKKs=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(4326008)(8676002)(66476007)(66556008)(5660300002)(66946007)(31696002)(6512007)(86362001)(2616005)(53546011)(6506007)(38100700002)(316002)(8936002)(26005)(7416002)(54906003)(83380400001)(6486002)(508600001)(36756003)(31686004)(2906002)(4744005)(186003)(110136005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0dxTS85anlnamtHdklEZktScXl4ZWRSYm43Nm9BMHdJSm5pUWRNS04wcTUx?=
 =?utf-8?B?THUxU1RQMGNZYzJITUtZbVBKWm45eW1teFk2UTk4NFY3a0paVzM5aU90Rjkw?=
 =?utf-8?B?VGh6TFp5VElFbnFWeXFlS0tXWFlyMGJSeXRPYmlXakloeEdzTXd5cGJGRE8w?=
 =?utf-8?B?M1hLWmZUSlJPRSt0YzdBWUN1WXR1YkxHR3oyNGc2ekZDdCtGYXd1SUloZGZu?=
 =?utf-8?B?TWZ1Qnp3M1I2NTV4b0pvSHpmeTBCSjhVMytqcFFOLzVIVWtSZW0vaTNQT05l?=
 =?utf-8?B?ejlGMXZRNk5nUFgyMENZUGZRVjZVN1lQQ09la2d0S0hHbm5XbVhHSW50Szl6?=
 =?utf-8?B?OHRPSURKRUJPT0ZDbmhsdWtlMzdQMnNMcnc0eHRRNUcraTQrcWxFMlVhY29S?=
 =?utf-8?B?ZFBtMVd3NVN6bFNnYVNTM2ZrR3RUMzVmN0dvbU5yY0ZpU2VWQkg5V3FKTThP?=
 =?utf-8?B?clZadGRaZUM3VWc1d3RPclFmaENFYTNrUEJLSHJIT1dNSWIrY3IxaytaMkh6?=
 =?utf-8?B?ejQ4YjVJekFqK3pMV1JvcGp3cE55d3p5eE1ITEJwY3lpdk5YZEo5bmIyVi9p?=
 =?utf-8?B?dEdJTHlxOG9XOXNoSHZvVHlmVjJQMG1xSFRKSWsrV1I1cElTNi82M2MxMEsz?=
 =?utf-8?B?bkVFeGhYTk1NTDlQNDZHd1k1VmFFaUF4VzZla3U0OWVmaVFXT2lTV2tvaXRi?=
 =?utf-8?B?THhzY3lnT0RkZ1JjYkJCZWFoREYvZFdaU1VDUHY2eFJNWis5NllCeDVVTzJi?=
 =?utf-8?B?K0Y4eTdXMkVUVkRUYjVPVTJvSjZNcGkrUWFjL20rYWZwaVMwRm9Bb0RoTE5o?=
 =?utf-8?B?cFNOQ0NEbnJGRVNNN0YwTEpZeCtzMlpNVnRQUlZJdmxIeS93eWY2SVNaT1lT?=
 =?utf-8?B?ai9QN09xMHJ3SUNiRWp6a3loUHROMC9rZ1Rhak1FenBQQXNtbmlLV3dONUV4?=
 =?utf-8?B?UDVSSU1HRGQwL2RNWjZpN1hwT3FZWUY4bGZkWEZQcHpFMmdpblMxb1J5ZDJy?=
 =?utf-8?B?TGNoeGp6YlZ6eWlmMmRtWWNvTlovS1ZXb0loVStLUW5kbWVVZGNyZ2tmMTVR?=
 =?utf-8?B?RkVwdEhFYWhFTEU2d3dSTG9IVE1UUUxjVHhXUzJMbFNMMGlhTENKdHhSMXYy?=
 =?utf-8?B?Z09xUklsR1l4MTZITE8rSVYzTjZVUHVDTkJtNUJSZUQrOGdoNjczWERpUmFM?=
 =?utf-8?B?bmZDUFFMQVRkL2Q3cE5zQWNWSlVCTXVkd1ZCWUZJWHJSQnBtc0htRnRkNlpO?=
 =?utf-8?B?YWZram92Ym1kZTFnQnBJSHRTVThnRzY3dTUrOGczYnUwWjhIQXE0RWpMTWJu?=
 =?utf-8?B?MHJwK1JzL3dCdHNnK1lDNlZMRHhPUkZ2endtTk9sbm11Z1BTdXZMYlZQOXo2?=
 =?utf-8?B?U3dVeUVielI0MGx4TFIzSlgxTTF1c1pMd1JuWmlPVDJpYmR3cW1HbFFHOStu?=
 =?utf-8?B?eDZsMXNYcFFZSFJOSERYd1pHUXd3MkYxTFpmKzQvbTkvWWlOM2lvZDN0S01Z?=
 =?utf-8?B?TVpBMWZwS05hZ1JITTRIeHJqRnV1cWdHYjBlTm1YdUs2WCtlQ2dpc0VxNGk5?=
 =?utf-8?B?Yms3ZnI1akRBZW92YU9DZXVORVU0M2EzNG16cVZHMDRnMnFzNmlWdTNsRTJj?=
 =?utf-8?B?Zk5JWGwwd0kyeGZxQ0RnRldWandRM205OTBNTkhveDQyUk05eHRlcC9wVWRm?=
 =?utf-8?B?WXdBRExHWm9wcG04OThGeG1lelE4L3VUaVdQZG9EK3R4bUJJNFdFV0JmS2NK?=
 =?utf-8?B?RnhaSkVtaXIxNDlIUG1HYU03VnBvQVpnVGV0ZXRCWStITHhYLzQreG8vWHlL?=
 =?utf-8?B?WVhGelJIL1NXNlVvK0V1d3UvbWtPNU53b1JDN1hDZlNVSXhwd3k1Z0FpbFNI?=
 =?utf-8?B?ZUpUT01IbUpzZ3o2a3lxTUFFUkxpNDNiZ2hORFhWV3JaajNWZVlqaVJXeFVU?=
 =?utf-8?B?ZUFsZEljZTFkMUMxZ01VckMrZXNJbjBIeFhIdTNybndBMEVxWDluQXhpZXRC?=
 =?utf-8?B?bTl1R0pJdW9BPT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b42110b-e4b5-41e2-1f4c-08da08280a31
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2022 15:08:49.0770
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pGT1xABDzf9A/qxK13Ql3y+LVrn3nRNigmxYxDpjzZBF4ea6V6V4zZnzllqTgeQBkAg4rnHFBDj6bxJMAGqJ6ZyIkUF2vcjSmLY4HtzO2JE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR10MB2429
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10289 signatures=693715
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 spamscore=0
 malwarescore=0 adultscore=0 bulkscore=0 mlxscore=0 mlxlogscore=999
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203170089
X-Proofpoint-ORIG-GUID: MX5b2jUkKAOYQ-Hd9Hp8b0fcMJb9k-tk
X-Proofpoint-GUID: MX5b2jUkKAOYQ-Hd9Hp8b0fcMJb9k-tk
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=Q67J+OhE;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=awUGhSb7;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 3/17/22 10:01 AM, Wenchao Hao wrote:
> iscsi_cls_conn is alloced by kzalloc(), the whole iscsi_cls_conn is
> zero filled already including the dd_data. So it is unnecessary to
> call memset again.
> 
> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> Reviewed-by: Wu Bo <wubo40@huawei.com>
> Reviewed-by: Lee Duncan <lduncan@suse.com>
> ---
>  drivers/scsi/libiscsi.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index d09926e6c8a8..cf4211c6500d 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -3045,7 +3045,6 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_session, int dd_size,
>  	if (!cls_conn)
>  		return NULL;
>  	conn = cls_conn->dd_data;
> -	memset(conn, 0, sizeof(*conn) + dd_size);
>  
>  	conn->dd_data = cls_conn->dd_data + sizeof(*conn);
>  	conn->session = session;

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/82d04e94-86e1-fcd6-80c3-3b800f55cb7a%40oracle.com.
