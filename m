Return-Path: <open-iscsi+bncBDVIJONZ3YDRBBV7QCFAMGQESVV4QHQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 451A640A518
	for <lists+open-iscsi@lfdr.de>; Tue, 14 Sep 2021 06:05:28 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id o9-20020ac80249000000b002a0c9fd54d5sf58767008qtg.4
        for <lists+open-iscsi@lfdr.de>; Mon, 13 Sep 2021 21:05:28 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1631592327; cv=pass;
        d=google.com; s=arc-20160816;
        b=C0I3NxHIEiMXA+EJuIYc+CkTUkQeGi0GkQ6deHfKKxyZah7+YQ+QrggEosaaKzC944
         Erw6DIwgTy6zmb2ckUXWpR7w+fNOO3nnuu8gPuABlSBU2H3aYnYmkNFQtO4c0Pfn87Fl
         8ztQxMrnmY3m39x9zPf0UQhXwMY/krnISJyVe9GkMaL3dDnHdSExde+jBF7Gb+e4lzSs
         6ZcyqA6Az1aX4welWGVwFk8p3bQ364HW8DF/SgDXIZjCJkAMbsr0E85Vzb33f/HUZ+SJ
         eUAVk6jIGWRRt/sIAU2cE3qzsNLZLs+E9f2zrF3hyn1eBhqw5fmxQ3FVlVXLyCf9FoMt
         AROQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :date:references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=uOFIKjdCTK6rVrmSbPMYHSLFF6x7iqIut5fcJoGAy8w=;
        b=HTF1AtkpwjJf6Fikv46Tih8Pp7NRcursaxz/TecXjNIailJYlkPDwZKzzmnGtxC2J3
         sgyQiHhcfcF0b+KwsGWc8sFB9yzCFy9FUYMie1BvwQE7UsjPgRGI94aBTkkWEbJY83dA
         b27u8ciaUUVFleGBH71VXVIngbwOVkHyssMW2mitAa1oeIW/OEu27zgO+EQp8KS7xoGO
         yjO2GjtJh5XjE/izyMrLZpM9GKaaSHa3BiBnnmfmbal1kCGySMeGBIpTIs/ZxESTyhRI
         +D7Kad5vfPRh6M0JWjGAzuL4XAMVmWAVCadkE5fukH5KOpRkaTLwd8FCD+4C6BkAPHD1
         BYCQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=l6oGrQJK;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=0Liw2pJT;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=x8JwubDv;
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
        bh=uOFIKjdCTK6rVrmSbPMYHSLFF6x7iqIut5fcJoGAy8w=;
        b=fimXOGNqcxu6iWlKeReq0fKsOlkdPHW39eX6RbqJfh+n60Mx3XlXP/njQ7fAd6qIa1
         x8PGAAjip5VPA4dWyatEm84JLLS81QbJS7qpj3Yo1Vqv7RJhbVXQiMTMaT2kyEZjN4Wl
         ejksTmPm0kyMwTljqbkPvIOKLjyewDz8rRSJcNC20AJmGtQdOrnpNjzOqnaIZPx9BKqU
         98mN0mFreInJURxTd3tQA6GsFkHletbddYMQiHDHwjkWWO9bHxFYses4guahKKdN+VWJ
         odUUWzNLKXANCWi0mRTGi5YyVMF+WzYd2k5RpsmuQEuDGX25wT/6nc+p1QLShOzn0CmA
         +nfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uOFIKjdCTK6rVrmSbPMYHSLFF6x7iqIut5fcJoGAy8w=;
        b=j/IKLCEgif7IX/3IkOhoNZYDoKw1aodbmaMhINCKkZ1N72CX2DyIQbshO5DKXeBB5T
         YczPj4Ses/KYwO7eatVvAlf0bo49s+B02U/JaKYY15nngiTnw7atEDnoCpjqcvtVwGkx
         3FOMBrlpbCNTNfnv6veTEomnngqPM9BLjx1Jg7AV8KHaj2iCNEEjJs4KvqZs6A0UQiAI
         c0/aI7yRvXnQsx9JSfhvcMKdy7gEVL82LGvSCWpVojvOLGxesu27P/PH4/ZwWb33XiDh
         hZUx937RgZuju/OmrcTU9bYbwlEeP1JMK0wzBWtCXF9PbUaox2j8esVQbn/6XNuTgjMZ
         N+8A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531GjQdT5+PYdlZXxrq0YXx5wWZnIBWJBbTLgiE3eJblrQICE5N+
	O7XWLyhGV14zawX/qDsjrds=
X-Google-Smtp-Source: ABdhPJwxjf1sGxCSs9q8+SCEvFFzm8o2/vOD026Nfq315lcFWP87IcQ+ovk/E8c3hm5u/84KL69qaA==
X-Received: by 2002:ad4:40d1:: with SMTP id x17mr3315005qvp.7.1631592327095;
        Mon, 13 Sep 2021 21:05:27 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:1582:: with SMTP id d2ls6527817qkk.9.gmail; Mon, 13
 Sep 2021 21:05:26 -0700 (PDT)
X-Received: by 2002:a37:b56:: with SMTP id 83mr3009153qkl.360.1631592326648;
        Mon, 13 Sep 2021 21:05:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631592326; cv=pass;
        d=google.com; s=arc-20160816;
        b=GwUnpQpvp1dlQxMZ8jZMy2K4dD9smi4iq5hC7C6EZqjAP6/v546OoGcAjLVd40Q9s+
         rsE5ABZvoQ3VgN9oDbPhMAclEeB9nilIIz98HPFNB1AnLTr7RT2rh6qLsCc3/5mn4eIT
         +RHVyxaU7/lDMI/0KmPqrqcPZ6yIEom2ZZhUV1lkYzCg3NogowhhWKnYSG3oRaS9CPV6
         +m44TfpNwhe7V46kqhpN5swmPGlMiPrq0AAJntPFzesKejSO+i6Jk/rrogrNt6FXjN21
         PqB6jKjmGV4ONKul8wgdxHP7ImZ1nJWL7zGUgEE0IX+vLLpplJO/9CRKmGewV+lTZppt
         YObQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature:dkim-signature;
        bh=EL4lmwaU1NJcLd+T9Qyz0A36zAaL9jPg+cNc0jJdjjk=;
        b=C4ZgAYpbtZQqsYV4sffGe9fSnmFQio1bHoPdBD8NgrNwS8Cc8VhuanDem66NzZmyzx
         PuIkAORIvYXlS3RE5TUOADlEMp18Id5LU0lLcl9AUoTh0nt/m0jpYGCTAMB6D+jZyE5T
         qgvobBp0Fjci/Nkz/SS0bav38NgDrjrNoVDo2eDHCn+kmmC4vh/4wfiEZenHn9G3HwdB
         6Ulpyl5C6Kz9SFW1/0hIt9ndluW0NHSCcxQHwj7m7oaMVuzx/W454pwiEQBcRBSFoLPS
         hpXUThRq/yMbaoMaimVi3tg+u5QZTkVFflOfxITXuxXh/z8hJjiJ6eDsCDSMxdpssxI5
         hSag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=l6oGrQJK;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=0Liw2pJT;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=x8JwubDv;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id 11si54704qtu.5.2021.09.13.21.05.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Sep 2021 21:05:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18DNXvj5008709;
	Tue, 14 Sep 2021 04:05:25 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by mx0b-00069f02.pphosted.com with ESMTP id 3b1k1sd5fq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 14 Sep 2021 04:05:25 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 18E457mQ164934;
	Tue, 14 Sep 2021 04:05:24 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2177.outbound.protection.outlook.com [104.47.58.177])
	by userp3030.oracle.com with ESMTP id 3b0hjufbuu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 14 Sep 2021 04:05:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LEbNw3IMAhp7rIWfgZfF16uMb9OjqzvfNEt8Tj3FdYlgUBfNxbNHBi2nWAlF+ZeBNxmDZIuyQ0ubNIPUAc7pl8G5V6vjJe/jz5lrnIBHjHQ/ZXE816LmZReQWrY0n1E+bBZQacJ722FLqXl2flFd172tMpNUO96uSMDSBlrGmjrLEHI457oKa4gWBnLdjaMLiYokz+RQsGYEJMxF3PaIaieCZRukvGB+PZ2w9eztHLVIan/j7BrTnmQDKLT9WKpex1DjKfwJ7Gt+042a5EW7CeF7LIXv4jAfjLcl+CV3ENNWjuqZU7PjIHvNQXRJBRWrV7CwJzS9ge58t4YMjP7WCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=EL4lmwaU1NJcLd+T9Qyz0A36zAaL9jPg+cNc0jJdjjk=;
 b=Gkrln55nRARpGR9slxKHCEPjSQrvOOh/zMVvMPlP6e2/aWbDDCGUQ/diiNay4QVNX5fFbwS1rhCpXUEgmJIoD3fyBoqPUBQXtpK/IjpCrSqe/PsiAO7d9u/2vILPGFbLdNIdy9Tp1NvKwTFegSoZrIj54htCapxj1gvHsSKomjxGr3rlPDa6FI3B6vTc6ngqDcBfJKWZ2NTv0NxSIxFWMNArE6DoneJy48amEy0qMFK7tYx/klCLMGblkJEX/Vo03bMy1zJcnqgxNOsKv37FUbVob1X8lh91H6whCQ07TCczJ2IATMAz+hXfOa5MOaw1uARWUc87IhWeEUtrK8KCXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by PH0PR10MB4693.namprd10.prod.outlook.com (2603:10b6:510:3c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.17; Tue, 14 Sep
 2021 04:05:22 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::c0ed:36a0:7bc8:f2dc]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::c0ed:36a0:7bc8:f2dc%7]) with mapi id 15.20.4500.019; Tue, 14 Sep 2021
 04:05:22 +0000
To: Ding Hui <dinghui@sangfor.com.cn>
Cc: lduncan@suse.com, cleech@redhat.com, jejb@linux.ibm.com,
        martin.petersen@oracle.com, michael.christie@oracle.com,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] scsi: libiscsi: move init ehwait to
 iscsi_session_setup()
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq18rzzztsa.fsf@ca-mkp.ca.oracle.com>
References: <20210911135159.20543-1-dinghui@sangfor.com.cn>
Date: Tue, 14 Sep 2021 00:05:20 -0400
In-Reply-To: <20210911135159.20543-1-dinghui@sangfor.com.cn> (Ding Hui's
	message of "Sat, 11 Sep 2021 21:51:59 +0800")
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: SA0PR12CA0017.namprd12.prod.outlook.com
 (2603:10b6:806:6f::22) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
Received: from ca-mkp.ca.oracle.com (138.3.201.7) by SA0PR12CA0017.namprd12.prod.outlook.com (2603:10b6:806:6f::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 04:05:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 58716438-4cab-4a76-0d92-08d97734df61
X-MS-TrafficTypeDiagnostic: PH0PR10MB4693:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR10MB46934BD540FEB8A411400F398EDA9@PH0PR10MB4693.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1227;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aR4c9eYja4DpgimrRmdSz6mEf58HdZ/qR1NuXTI4ppja4QHQUnyewe0+QCVbuz1sZNxQJcChw1nojEovD7eBaeZw2JVCWLoR7Rux7laxyxcOPEfuds3ajIcdfmH7Z/NP2DPscqNWEKYaM99GBMTXYIwv26ATmVWFzvNRRdxZacr8Jfzhihz5FlE2OMcgVRwmWOSa3Ig6EJvEZ4AU9vxIhB5LU3LYsWC1hzLxhVBsaFrko6a9iIVp/MRK4vRr4cZmxBqF0jR8nTh4zdd8t1CHw11wk2ZzjHr4YPnwMUfXJ8oJthwPLwz587t0eVRi69hA/3HAvvgz6Ll9UB0THTDu+Q7AQFJyyokcDllvmafSn7kcqyNssjiSjgP+iUk9mNez4AV+RtfgbEM38swj4QspANz5gRR8wK4j/Ejn2SduXygX5xP4CBNu2S+W6mssmTPdjKuD7KIyLWuAM9SUlhuNZqixbmtEIzOhl/A4Kf9GugwKCyCfAsJ9yleeM6fa2FJ/dEPWfrm4MiMVoOiVDczQYre5IBdRitSzZZobRFYgqQ9PvRcq1094ibK4nG2lpuAoo9pDkCh0a3bpZUMvKGCXh1WVfR60R8Xkc1gZPEXNRF741BbvT4yIOYp8O/VtICbt+rLzdIXMRi68gc3GfZDdwugknYeOB9xOF0ECHrJ7HCb6IIcWE1hr7gYNiYEKF2+E0jxUvFlKmxbtt7WfyeHWxQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(39860400002)(346002)(376002)(366004)(136003)(86362001)(8676002)(26005)(36916002)(5660300002)(186003)(4326008)(478600001)(316002)(2906002)(4744005)(956004)(38350700002)(7696005)(55016002)(6916009)(66946007)(8936002)(66556008)(66476007)(38100700002)(52116002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xqja52klo5CDHznsrOMt3nyd+ZnXHvoiZ8ZQ2RpnQgAUNk44EuPJ4FXhaHPc?=
 =?us-ascii?Q?iZK1sy9vIdEE2qAa0BRjF7dF78R9m8glolJPnDuvK4AUZ6qWFLL3ad0nyJUj?=
 =?us-ascii?Q?dLz/VjO4s36DjShXwJ1zi7CtpEwJOaBue0AMpKeunv+9pg0mOfjUwwyFV5RL?=
 =?us-ascii?Q?8h7EpebNi4Hr+zL1y3c5AWG9ruEEJxWR8IooT68i6L8qZ2WHy7gx6Cy7WasX?=
 =?us-ascii?Q?o/It+zheWqK2a9udslUBJ0ON3GowMqMwZ2ox3kyw2aSgyzRf9E/0WRnUBrLd?=
 =?us-ascii?Q?7ccXgVyZXvlm6PTUmRhyRfCO4CeN0rt9w1Jt081I/SpiwbUCbmQiEbjRsxRs?=
 =?us-ascii?Q?XSLrs98VL/h6fEuzX+sKRFVUvcxwt6Rm3kYNFj83FI8RvPGARluVoZK5eKU2?=
 =?us-ascii?Q?6AZLiPStHSmfxYjuWqasnK3+YGnxu97RAMDp3YGDwiIm/5E0EmFO78nkcob7?=
 =?us-ascii?Q?ov9N2Vr5/ZBcrocVkiFU3w3ilubRlGAtpAZ0qqBaqAxqKtaZAg89wsLgw4po?=
 =?us-ascii?Q?3kbM3Ii0u0YXiHLRsrG5NcsOaYywSveOVxVIsnJQ9/ORhmVMUGRvnXt/PE2D?=
 =?us-ascii?Q?bEzodJ8mxOplhTfKpQ7ogIgfcQUU1mX3ZNXdEKzrTC8IdP/QR56Zi3Leagwk?=
 =?us-ascii?Q?KLsvqADW6Lnu6BRv+/jyfCSExh5YvwVDzZ6v2GcRvmEDBHSMYHCUcuYXQP4q?=
 =?us-ascii?Q?KH70NZYga5ja8WN4zKQ7bHyQK8+IOJFi3bvOcd5XUWRNX2Fldr0q0r+sP7QN?=
 =?us-ascii?Q?tgIFnFUU6mu0LEGWCZ2+08TP0fKRgdaa9mYJBMztXcyysG0Hr7Dp8W3udxdi?=
 =?us-ascii?Q?6A4gh2l4ZdVwUk7anunZ/TTAvQcaiHo+ss2aSjjNDzWKDd+ODmdNwPss74PN?=
 =?us-ascii?Q?ULhKcqw6ci1RwHvzy2KwzCTRImZ1qISk5zJwFvg77cxenrdrmfUl6g491f4m?=
 =?us-ascii?Q?JJSUYczIrLFbQIQuI5OzC48NaZx4iDXHo+iiWmltr76LNouzdKQMCSVtLQya?=
 =?us-ascii?Q?Q2g1lAImRmTz45nUiXutsso0EXnOcnWr+BkNX/DV17HsY33ySWHKFFPrdzTu?=
 =?us-ascii?Q?v0h3hs5GepHdo81tXw1HEqJd/mSekWimb95wIaZZEihPgH0h9j5NRs1+cdoh?=
 =?us-ascii?Q?A94nFZjNUUKMbANXRwHghANrCEgsGKe2Dh8CW5ynRRrq+Xn3soX2po7ZX5zE?=
 =?us-ascii?Q?jpjTRbIVzVutRW5kot2aOMNgQu1xTwE6e2zldEHjJYRefPC7repfHt8+TW0p?=
 =?us-ascii?Q?stzMqcIKQqWcYvgSxTrUkSYclS4TDYbMj0xmjNmWYyCkJ5uZ1OCEFdO7rfgS?=
 =?us-ascii?Q?3yf9Ky3z5lyKaJ1+6YIMNwgu?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58716438-4cab-4a76-0d92-08d97734df61
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 04:05:22.0405
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5U1Gv1zsNXo0qTMWQF7i6lDe/7oIzS91xTWU1SVpMadXwonywH1IdBjF+9JWxVyRYnhZllwVBemXRdgGz9Ir6Zyi9O34bwloW35dzIJ/xCw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4693
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10106 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 adultscore=0 phishscore=0
 mlxlogscore=999 suspectscore=0 spamscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109030001
 definitions=main-2109140023
X-Proofpoint-ORIG-GUID: usHY-KeTFbd77Q_xa4FwbT5kF67ID0bO
X-Proofpoint-GUID: usHY-KeTFbd77Q_xa4FwbT5kF67ID0bO
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=l6oGrQJK;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29
 header.b=0Liw2pJT;       dkim=pass header.i=@oracle.onmicrosoft.com
 header.s=selector2-oracle-onmicrosoft-com header.b=x8JwubDv;       arc=pass
 (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass
 fromdomain=oracle.com);       spf=pass (google.com: domain of
 martin.petersen@oracle.com designates 205.220.165.32 as permitted sender)
 smtp.mailfrom=martin.petersen@oracle.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=oracle.com
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


Ding,

> The commit ec29d0ac29be ("scsi: iscsi: Fix conn use after free during
> resets") move member ehwait from conn to session, but left init ehwait
> in iscsi_conn_setup().
>
> Although a session can only have 1 conn currently, it is better to do
> init ehwait in iscsi_session_setup() to prevent reinit by mistake,
> also in case we can handle multiple conns in the future.

Applied to 5.16/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq18rzzztsa.fsf%40ca-mkp.ca.oracle.com.
