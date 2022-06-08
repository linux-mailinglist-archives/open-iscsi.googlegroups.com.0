Return-Path: <open-iscsi+bncBDVIJONZ3YDRBQ4EQCKQMGQEVPBIK3A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCA05420B4
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Jun 2022 03:58:29 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id r9-20020a05622a034900b00304ea5d41ddsf6891504qtw.20
        for <lists+open-iscsi@lfdr.de>; Tue, 07 Jun 2022 18:58:29 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1654653508; cv=pass;
        d=google.com; s=arc-20160816;
        b=caLIS3LvDH/Z4bysPq6ldqYbVCfYI6SMPa8JTayYGCYoRHv+Zn0vZB+biaYRwn6Xob
         nCTBuZdc96NHXYuiz0bVzSkP96/996Hf/CcDPGwlysE+oze/07hk//4kJNZ8fC9BttXB
         YFSJb5OYE9vuKB+BOTA5No8kEL387i57Do7Sd+NmE8sG2SJrDDcYwGyXEFWpgKlUydeZ
         d7VqeLrBk+6VLF+cOT2lA9IkVKEQ9BDIh6zpiBj4tMbVE0QnF8W3vE4GuCN6wp/dUjQz
         utc+ty7FWDkWRVywh5N3dpC8FWr/nYwuLPYdV7n0ayEUZrsk9dVrIpoW4pYm5enP42Yg
         Hsbg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :date:references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=itBAOoup3thhM6IFxcb2l6KL4ELcSuAU0cg0I2SA+aI=;
        b=I884FXYUiYQ9bCfgO4ptgrg0aIIBKJcJT3A2ygQaBQ8oyUyvws6Fpgx+u4Jr4I8APk
         owCPWYKwkw0TVhbJqCEfCuH32sjVw4xv+qnvWNh8XU8pfGB2c4V7KILLzS6pbw33gAAn
         xlIXJP01BFMD8jO09j92+J90hXlxLPjYFKS1FIaHMx3FH0B31eMBnCQgtC1P3oj0y0Sm
         70y2xfvn8ZxKyfMfJYxzzEoeVJySoLayBW/PHptdLgjd30xEmiugPZ1ktxZY48zdniXT
         Y4dEmx0896j5RXTI+Iq8WTJh3bHk+zRZ0mwt+z9qKfDcOJWuJN98siq986+9RXZbrXcX
         6BPg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=096mEbwm;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=KAh2Zr69;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=itBAOoup3thhM6IFxcb2l6KL4ELcSuAU0cg0I2SA+aI=;
        b=GVSMfhahkJLZIg2TIu7AOXzCoJ4/kR7DCh0/fs1vzrt9B3BPy6LynHZP/nyYsApLdt
         U0w325/WUhiqCLuKBF0qiVDsraZOPZg/5QzW1tutWwznSc8Y7qKbxQCvu5cT0x1Sa4UJ
         JBUAhuryk4eXT63XaRE70nIP+o1HwYKSNwH1hA7Se7uX4eEx2ibCvFrPKh90qpod7888
         I1qY1mwctRlh+2E8slaiQyJRQ2faWoo4SHL/GkrbBEKDKLvsAbXzGcwLAlFx1KuH9KJp
         nsvuHlSpsT3W0f2K0NUm48mliN4LSEm0xCnSrP2BfmcQqZhUioVa7dF6eR+Pd0peBGgB
         zlZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=itBAOoup3thhM6IFxcb2l6KL4ELcSuAU0cg0I2SA+aI=;
        b=SbA7SOFrJrBVv0l1CIa4cK5beczyvNWnMjWtZ1AesXnp9atgbR7EweUypOsMYA9eb5
         kvLqzhLdHXUlIYHwIqBafUrS7ywrDHijf4pgpIQQexbCcv7tcxD36r6re56BwVeSdBvD
         rqr+Z3j4Tg8/MzRM5HthCxFaxRLN0ehSqtPACLsGjM8FoSueOoz3BGevJxsy3591+aIy
         T6EV+bonXOJssx9BfSvYGwqWbr1N0VoL4hDz0Xeg4OJZoiRWD2KDwYUy7w3/sAAqN1Di
         TsN90vHeuCnTEjQDQRj4trQ9iNq519wJ3Dj8oLt+CvkT2i8eswriP3oWziIFMDtoAe7a
         pwoQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531N64blqPAACpeGuFZNAnwNYrdgX60ZZA/R7qa0/5gq4+gGlvUX
	Pi8NdnpKS0TRRnCGqCD3uVQ=
X-Google-Smtp-Source: ABdhPJxl6flghzSHkQldpfvG0eiAcHlHGHrHhqIOtoUi50kNdXVe8AZ25aRFGNshYh6iRGzXd1aS9w==
X-Received: by 2002:a05:622a:188:b0:304:f343:bba2 with SMTP id s8-20020a05622a018800b00304f343bba2mr8238976qtw.377.1654653508103;
        Tue, 07 Jun 2022 18:58:28 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:598a:0:b0:304:d8cd:2051 with SMTP id e10-20020ac8598a000000b00304d8cd2051ls4210653qte.2.gmail;
 Tue, 07 Jun 2022 18:58:26 -0700 (PDT)
X-Received: by 2002:a05:622a:341:b0:304:f730:72ea with SMTP id r1-20020a05622a034100b00304f73072eamr6217283qtw.281.1654653506589;
        Tue, 07 Jun 2022 18:58:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1654653506; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q9Ew5k0uwh5epbUcaF8rw+0jU/yXn3ufGu/ptHG4KkohSlv1MefTtzx5kmjNjYVxRK
         iemsCchSjzK+ROA8sIAvK8A9UKrRDtFWoSdX1NMuc0Oa4SA++eSdthTU90gmEiMr0TdG
         Iy8Ys2ZVMhJaHS6Vvb2v4aTIrYz3BZfXWk/8CZnijnIxQEVOCpfS03unBbbTD8If8wk4
         2vFDc4YJirSMoEIY2RCcgMKVOnBUtNNzkemMbBeASMKu7d735oHpZI046sHQcvXkbFf7
         wYJys4bl26sc53Zhshx+LfdZYXpStvod0vydbe3KrjSVHaagSv8mMsrf/tphiOUzi9JH
         a8iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=LMS5+jmGOMU+IIpc3hAlR7tTB96gOLA9Smex3vfXoR0=;
        b=XiPcz0wBULUogaHYADCdo4stZQ6d/FM6b1N6QIsnvTOezcc0WXQ8nFEt+e49R7Z9Wk
         24mR48Pt6KsMgy0lCSi5cdyFO1t+EntGaKeJ8IDtkvTeC2fEW0ODGX7narjejLSiaybo
         rKMiH9SE7lbhMI+YZ9cSwTAFkiKRJb6Sfy1BnzqArhxr+fF8Uj+NZNV7RclLCt+nkWRZ
         BMD3iB3+i5gZgDjvFtp5pH4gsudnx5kQ8VUFDz90qlyq/w5id7Yj/s0BpcZyh3AVgieA
         TLYOlwDbVPBqXRuPo5Y384dbz75v6mAOkNekEGKpq/aLBfA0jSSBHlC7pQp6SbAVBA95
         GkFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=096mEbwm;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=KAh2Zr69;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id v21-20020ac85795000000b00304eccc68a9si247376qta.2.2022.06.07.18.58.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jun 2022 18:58:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25806CkN010581;
	Wed, 8 Jun 2022 01:58:25 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3ghvs3an30-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 08 Jun 2022 01:58:25 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 2581uXea019306;
	Wed, 8 Jun 2022 01:58:24 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id 3gfwu33qhx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 08 Jun 2022 01:58:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YmL5HvV7KZwZItJs3U/EhnY2CYhKCxG8VOsZ7mwbKzAo7Z5x0gBeufaQmp6JweqjWXninoac/lw2l5Nqns32mphYs9oO/6qnlTJtAz+81fgnGNKxxZE5qmE0NuUtHne5xi8oYclSeC53qVASU7VrEW4i8vdGHcYhMnPQo3eQcHtS1t99fwyFQ7X/lrcXU/ONBGDEC+qiES1GyAEpZF2HM/tHAWx6GrNAs2EHTwyYiEX9hbOpOI3OGfUajUJcMxyx5S1/7N6/JnGM/gu51TSGofHMRgsmm1o1dZYmO+eGQPcHtnraDHdbvA+aChpODNuRMe07UnFYaAmGvMzJp0VgVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LMS5+jmGOMU+IIpc3hAlR7tTB96gOLA9Smex3vfXoR0=;
 b=W2D3g1dduCaNuto3ovwVt2TyCid59f66FBBhhXwvn05SnxZQZg7vbOlw+oQRUIoXuhUmvm3N8mTXxhXr11yn+W3+ReNz/Iagrphp2Vek4x5dydn3ROTpprw+KuPIvNtkaIuG4HRG9koCMjyMeJ2E5ErpLve0PWKHy8pQOC7hFesLoZhjQqOqFBlDu5yQjuyQkjYoc90xdKJlAa8/E3zxAOTLZHg61dscIYUKtv7eUomVJFU+Lvu5A1u8Og/1KSnIu6iPwr76oMu1J/jt6Hi2wxMb/BqmX/43dYEAi5rk3+OZgvVFdgiVk4BS8KLweW6ogquti43YBdDUSHRk65g0Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by DM4PR10MB5943.namprd10.prod.outlook.com (2603:10b6:8:ac::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.19; Wed, 8 Jun 2022 01:58:22 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::d1db:de4e:9b71:3192]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::d1db:de4e:9b71:3192%9]) with mapi id 15.20.5314.019; Wed, 8 Jun 2022
 01:58:22 +0000
To: keliu <liuke94@huawei.com>
Cc: <jejb@linux.ibm.com>, <martin.petersen@oracle.com>, <lduncan@suse.com>,
        <cleech@redhat.com>, <michael.christie@oracle.com>,
        <linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <open-iscsi@googlegroups.com>
Subject: Re: [PATCH] drivers: scsi: Directly use ida_alloc()/free()
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1v8tbykzw.fsf@ca-mkp.ca.oracle.com>
References: <20220527083049.2552526-1-liuke94@huawei.com>
Date: Tue, 07 Jun 2022 21:58:20 -0400
In-Reply-To: <20220527083049.2552526-1-liuke94@huawei.com> (keliu's message of
	"Fri, 27 May 2022 08:30:49 +0000")
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MN2PR02CA0011.namprd02.prod.outlook.com
 (2603:10b6:208:fc::24) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b3039eb0-465e-4368-a309-08da48f25e09
X-MS-TrafficTypeDiagnostic: DM4PR10MB5943:EE_
X-Microsoft-Antispam-PRVS: <DM4PR10MB594380E054A2C4771D5F0CE58EA49@DM4PR10MB5943.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xS1HgI+QW71DukY5zuCp1C1fQEX6pIyux4iLwD7HXG1d12XVsl1QFAP3iD9j8U3M7meN6H/x8V0s/sAXu0pBrAjzNqvTLHQg68d3cf99akqYuLPSAedRCzbtJHQEVVq8CJAIeLU6lSMr3AjdF/uRxY9V34gQPeEyvCKHsjfbmGaPQK12kOW+bG2uKatbQwkNHGsminMrBb8fhdvr2zqRbKedhaN7TVGvWn8XxWKWrbMd02TOiNDls22Nxb+7OqQ6Y5HgVFVRsP3wQ8hXAiUK2VYETEW5WzjBMV3MAxBd99kcQPcrzULP5ifW7QMpnvDEqgxgxlCJfpH4zSip/HHAWwAXQW9kIlpH1DP8sivhWdBNxnFmxP+/QEtNYLR2TYAJ0mKLzRNg15mF4VNMnFQY+TViRld8A7x5kImq52AGf0PqTy9w2bFhK8NQSpSi6tEmT5OaUk1MK97O9EVRGGDnWA9NXSIk0QNnq7gwgafyZTlDPpoO9xJubu8KhxRYLyBRgMfYOMTmNNpdzuDd9472ZSlGB7EpVpxGDCIDou4OFY6jLqFMHq2CDa5budUHaO032AXJjmxTXCI3Kxt3e0VyBTxs9Bf27MFWPoqwo6DLqJofT3829SyfTKsaTzH85/p+CFd+o+1m7FGKUIwkVs3Cv0+E5C/O4OYwJo28iViJa51cFNPZ+8aM+V6KOurgd+mQA03wPSaH1UtHFe4aaQMnCg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(54906003)(26005)(66476007)(4326008)(5660300002)(66946007)(38100700002)(316002)(66556008)(8676002)(508600001)(186003)(558084003)(36916002)(8936002)(2906002)(38350700002)(6916009)(6506007)(6486002)(52116002)(86362001)(6512007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bIpmiyI+9XOJ4Pat8+nMG6SdPl9fwpMqFya64UKMf/zeNnZ1aBnoHoglNbxX?=
 =?us-ascii?Q?4j/Ios4GOBtkXIrTmkV09TnRexoRbCi8XCrfW2O9Uqt+qujcd1vv4M8LTPfN?=
 =?us-ascii?Q?/3BuN1CO/w5PGAxcJVWBif/poFocjtbaXtAy6+g5vhiOemrjVY5qvxbm5DPi?=
 =?us-ascii?Q?PQuuWWhCm/TKo8PzfilNm940crt9/HeIhucRz6rdfY5E875UvZOOb0A0MQ6A?=
 =?us-ascii?Q?tNc5auMIaZlrqq8s8WoBiro/ugDBq2mWVBcZDFPOprwRHDhZLugjvogXTGrB?=
 =?us-ascii?Q?yODXNsMTIC3/eFWRB5uMCCQw07jwX8Y9UK81lV1H9DZqfEYGt3EfAtUjmwfP?=
 =?us-ascii?Q?9xKIKGmq2B69SPIUNAhFj0cWtPMhyK2JO2q0JDuB7ThKyp8pQs9ZPy6I9gVP?=
 =?us-ascii?Q?E71MfB0cg+dPlsHlabsi6v3IhdPYNhdZfRGt4W+AZW8LjBIjVD1X6WKXGjcF?=
 =?us-ascii?Q?fxevFk1szaIXs4y0vVDjoCWXUkfK2Vihb1J3wSRSexJ1dXo/8kdyL0eceLc0?=
 =?us-ascii?Q?apv0mseJhhsR5AspcL1kOtV1EBZUFfN8AcwoYId3RohOM9QU+Hg75uOrsfyr?=
 =?us-ascii?Q?Eacf3lVMAK+yX+sBz+voeA+ymuZnVrNYu3NCFHqmOENkIuZTcuog0zIEMQ2E?=
 =?us-ascii?Q?44bxLqtQC6DINTb9+dW4g5hLKYuJHipFurBRgp+HOToyeGj+yp3P9KFwYVtK?=
 =?us-ascii?Q?promNb0pmnuqwuOlBKnhN6lcBgu4OIm3N6iryACNHrrSgmx9YFfv1PePK/Jn?=
 =?us-ascii?Q?hcPiBDeKK9hDmymfaN7Y2TUZ45w3h63FYDOAPIdqBKX+nApnefps4xWZo0iB?=
 =?us-ascii?Q?xQ3XQy/x2mYREwuLwLPdpvSjOMoWBLgV/VXgVCo98BiCIyz8dycmSzre6X2x?=
 =?us-ascii?Q?P+8fvKdgid7oCUbrdYQRdOJUQ2bELF1+szoIFMZywRFzC6WwWJ/A3BqLTwhC?=
 =?us-ascii?Q?m05tbrLHe15HIKUXlWB/WcV9dfauEHKrSGQwY73UR1OV+xMi47Q58LylES7y?=
 =?us-ascii?Q?n+Tn+nGjSH5MPmACXc7C8UVffkNkem9ZepartxOklXxrMqi6WLGjwrVnSVrl?=
 =?us-ascii?Q?Lj9FMx/HMxCH1epJYSdM5S7Vl2dJ/v3hMhmQqD3/jDtF6dgEIs7I53mPtY9x?=
 =?us-ascii?Q?HY/Mk4xy/7O/6s3V6s6nz27iNfG+z4BqHo2eDC1gtSd7nhapUkpKfnhwFvW1?=
 =?us-ascii?Q?DMoHfLTDqPyqoSpazaUNKrzlz/AUW19UcLnz8axAOpgD/jrSNf2BhcMq5InT?=
 =?us-ascii?Q?XksEOOZI594rJZ1haVQFSPQpvduSej2lMfm7zQJe4cvTbbhPQ5TQ23AaLm/K?=
 =?us-ascii?Q?0UtPjJg5yfe7leTLooPJ4Aksrj66NRr8KSBJeQhc6p8qekPg2b6euHzZjZ1o?=
 =?us-ascii?Q?LZkFGbKzuW0NbwZiYKiRT3Y49MDbzRzoU6+HfvU/uyWYEBgaPDSEocSeAOCL?=
 =?us-ascii?Q?hST7OmXasygyCezAF98UviSknLZZtV3Hw2VvCfP8xkKVwBwKR5FozdEjvaK+?=
 =?us-ascii?Q?FtbmEYUORQFTwXGAtjdO9pra5u3G2uA+Yuhd/IDNAUJxUAj4sPQt2pw7E3jD?=
 =?us-ascii?Q?hbyQ41x96nKo+upVaMezGgDSLfqMA85r+Skrw6rkTO+nOKwppSwkiYm4Ynpz?=
 =?us-ascii?Q?ACBnT2uvdEO9ObY0YTqL2jBLv0BVfWMN0fy7tGkSW4E5QV2fk/RgNWdofwd5?=
 =?us-ascii?Q?mIZ7NuA8zucoKH+Sb3KPahUMx3Kgn6pWum4Rk0F6JiEjiIbpYq5ufHKgOhXV?=
 =?us-ascii?Q?LRcft1p69OW50LLKf9O2rmH9fIVZ83Q=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3039eb0-465e-4368-a309-08da48f25e09
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2022 01:58:22.5028
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YguiMJIYBuZiToofWBto1OwJpqzYVGq67W4lUHAASSYCKgffHkFxIOPmq+liVWU7COBabnto86g43IevBtS11nISkfc4xxE3WmNsvbibxe0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB5943
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517,18.0.874
 definitions=2022-06-07_11:2022-06-07,2022-06-07 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=303 spamscore=0
 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2206080007
X-Proofpoint-ORIG-GUID: WBO-A4piivP7fcQ3y2Fwq1v2nVjYPsKC
X-Proofpoint-GUID: WBO-A4piivP7fcQ3y2Fwq1v2nVjYPsKC
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=096mEbwm;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=KAh2Zr69;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


keliu,

> Use ida_alloc()/ida_free() instead of deprecated
> ida_simple_get()/ida_simple_remove() .

Applied to 5.20/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1v8tbykzw.fsf%40ca-mkp.ca.oracle.com.
