Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBWFSWKBQMGQESKPPKXQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C473355A39
	for <lists+open-iscsi@lfdr.de>; Tue,  6 Apr 2021 19:24:41 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id x6sf622666vsp.23
        for <lists+open-iscsi@lfdr.de>; Tue, 06 Apr 2021 10:24:41 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1617729880; cv=pass;
        d=google.com; s=arc-20160816;
        b=iZf5kt9snf3HSKT0aC+EQoL/ciSGo36YbNXSNxF9nfvfYo5ovkKQFUMI/tZIEUYgV1
         /BrkUqeqyesTn3OVyiaNguh0oov/NXIkKxIdtoGbBzFxXsiJNQvKGuKzpQ3vXWsrxY/Q
         3ydbLUR9h/bougtKJIVL1whCFEajc3beYs06rkXE0EvTn8OtS+uRVaAhAztz9YOJ/omB
         MxR/+USNYdP4k+ip4mzAx9x26iEoohtLPSnOwIVXgUDKvTHY4TbtD90/FxaAWEuTf+2U
         6G6oyUXo9F2yqYQssyiG2WdiYk6SJIe9WI3nnWNi+3cs2SAAmXD40Kac2/IcaFzftDKb
         i6xA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=xfrFDRscR3KLHJ6HPDia0dsIbIZu+fIe+SM4E9ccDtY=;
        b=MKSLoSRSsLTDTe3fSwe4E5DSn4pBX90Zjn1ihurkVVde6pHjphJvm654AwuWUfM5w/
         NVBVVH28HMJtApJJKWtfuqsEk9/YiEYJ0biO6yAO62uj3F/E9wfllCUAxbpwCESarPHQ
         Zi8rSvjNOtLJOZOBceA5blDHGIFSzj4qSssU0+wfZBkivIF4YM2BUSv2FycBQom8didi
         BBZkjX/DAK9BGCZBHMTjctvrZMFxc/JIz4g2r9f7P693v19GNsXMxPTGW2KJP5ldw/4k
         nQrB5G9KRdIxreyUdY6AHmHS+3h+UH2dXxujWFsG8JO0en+6ZprD5HPQLbQ4Qv8179SU
         uMMg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=b6C+6Y4O;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="kD/PAfS5";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=xfrFDRscR3KLHJ6HPDia0dsIbIZu+fIe+SM4E9ccDtY=;
        b=C57Le39zmipAoQmwYetQOfgkFc7uXFz95xXmPsi01emK1beekKlUHoAoaMX/0dM/bu
         gEEp+uUtgArYVljn9mq2Hmm+IyOiuyZQwPjxSH0E2HGzIWkXUzmLJ+RGe8FuRqe4xEai
         Ce5wWVbU1vUq/ck0aFdOkTs0ejuFswOTTyLpYpj534VTCr7RXPXx6+gHobwfm1hJHXQi
         FfvgNVT02BJ0+q8DkgP2hNWMikM1MrYHLppuYP3Itv6t0CXuMnb7udTCpM294+DmIY4T
         Xf+NrU1cufzceia2HrhrQqkVWoXIenMVx088rk/rQj01fjVy4NumM7J4RQIyv5tV10tf
         ENJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xfrFDRscR3KLHJ6HPDia0dsIbIZu+fIe+SM4E9ccDtY=;
        b=PwfmjME2NJ8qyNehKuxerrV9vCMSD2rNuD2pxRaP+WxjXm31uqJevZXdOWPYQiOAdU
         2oTCe0zkArR1S/TxNqWny5EZDXVPplgNv9036coBEGH+NhFt8BCqz6pitqX6GRATWebw
         N9CKDp3C4QoEbvrt3m9vfjK7rQx+vky11uM+0V5Aj4tnj8p2U0niugmRe0E/6xicEUGY
         1YPleYGtUTilbxbrpUfJdkANuPDYeuwnAX8a3EqJ3yLNaRM6/N1mJd8Tog0CWPBJNeSC
         wSh/x7SZ3LEOy6XREZArMOmRmGWgb/sWDmjig1DYrM4CdWATNzvt4qFD/mVz0M6pbm/V
         mnew==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533w7G4S5D1ZU0fy4eL2VEUXvCdeDMB3Q+OIJozyFFmu4wSlFqtI
	IodXw7f86YpcIDVqytBC4WY=
X-Google-Smtp-Source: ABdhPJzZ4cX+gSsyCJRQXJQrIllWAQUhlDcnPGimp6dz9G/NzdMgvV215ctIFm2LL8qPsXpZtEVbeA==
X-Received: by 2002:ab0:5e5:: with SMTP id e92mr16972341uae.70.1617729880297;
        Tue, 06 Apr 2021 10:24:40 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ab0:3486:: with SMTP id c6ls1414027uar.6.gmail; Tue, 06 Apr
 2021 10:24:39 -0700 (PDT)
X-Received: by 2002:ab0:7142:: with SMTP id k2mr4938867uao.124.1617729879548;
        Tue, 06 Apr 2021 10:24:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617729879; cv=pass;
        d=google.com; s=arc-20160816;
        b=qKRJJnQX0MhOyAKDAVzR5UkfPI1sESx23PQo99eJvbrOm+a8SUf5d0HsUvjKKYpyyH
         jAqrHwYDCxzmP+GyxJVAa+2rVBxSTfFTcSgrViHgkrSqfE4Fy31YIVcnDqg1NTIDSIqB
         S7chg8fLiWu1ttUUfuk7HpiR5uSUsV0HVrgUd4QXNY9YQ55zvEPNsJATvofJdIJEbfhX
         g0KboPYUuEvOdJG+KtfrKwv2kvPQlthJRjps7aVk+Ked6j9F63cX00GKnBVdrgAVG8rf
         7nuisdGXE7vPAIzGV6xZCbEbZzH0myNfyqfJPniKKRZvXeFMcgjPu1zXGNyKzWjVKD7I
         zMKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=5abybPGsa9I+qMkavJMkc/xIfH1gxHVJ9xe6KvZupYw=;
        b=dDihRW0gGIIp7UFgfln1Da+b10bB7lwiwfbrfLdWPfdMD2+DfXSaHUedyCusam2dBJ
         nIM0M6hkst9l/v8wyBUP88HRP+YtbU98MFEO5JXqPNjPuujf0rOf9vcqc/ozULuK0w1+
         uWHsq+sajFco49ep1HwHGclzNrmIWm2/ynn2lYXqT/tDNObnArAIzVRZmcAfoLKl/nYl
         dtvLV4aYtUbWt65I8T/7D5q3NawJr+rYWWdkH6lFAo4n7Mc2VBH53rUt8fUoRSC+V8vo
         SyGi089nuPOYrVoASgo/b29JLFJB+FbJrIy+PRGEqRbAnRl+mkPoIhx1tAyEqNWvfBuV
         3Faw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=b6C+6Y4O;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="kD/PAfS5";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id i8si1390060vko.4.2021.04.06.10.24.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 10:24:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 136HO8Jk051064;
	Tue, 6 Apr 2021 17:24:38 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2120.oracle.com with ESMTP id 37q3bwpb7c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 06 Apr 2021 17:24:38 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 136HL4fJ140287;
	Tue, 6 Apr 2021 17:24:37 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2044.outbound.protection.outlook.com [104.47.66.44])
	by userp3020.oracle.com with ESMTP id 37q2pujkwv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 06 Apr 2021 17:24:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=InviiADyRs8dOYN1WKkrCvssTg7eUOEnU+7TDwYqm7Ls3s8WHdd/nS7BiUFHx1UFUURBG88NfRWKw54OrYF1ssmRAH8Ba1oHFutwy2c1AnuyTUmIexlxFR7NyyLETB/Yf4froWXqrDwgw3E4gPtsEsQ4it4IqosGH1EwoZZN2N1FyT3AdIKQgqV7gY56d1pVzi8lAG0VftZTWJvxV+vBkhn4gWTYjZ3Or5igTVZKOSoKRZRrExg91neb96bEboK+xnM92TL/6wwbEmRQ/R3rCuct5fDrabv07IdoSwvmjPw/5eY9uFsbvxf7hVqGOlS8zwoxJvxQe9GJkcm3Qc7BlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5abybPGsa9I+qMkavJMkc/xIfH1gxHVJ9xe6KvZupYw=;
 b=MZ544IUJcR5PLKpzbAo0CMYIFJDK4G1THB+cXUi5BIrbmxpAnR6HybSdHrZHIGpp1oqMg9sTUQQlv2sAuISE4/mnhpg0yrENQy0Cl97bypj4p0p3oNoODu9bqakJ+hEgHJO9ooUnSDRm9/ALfuv8S/KFCvoTCdKryVh/Pr2FWzsmPMtDcqe6ykdXmuaSsD3eVFAq3Qmcj/B8ZcFtAuGMPWG1EnUEuFyI1xHdVR/vhTbwSKavcN6Y01/Zs+WeFZGKL+bgJYVR3FA+UKY9hivjXhWl1rtlYKbRRupFM56iUwVzzDHkdGPDB2IGWsh7shUDGEtS73bforHqVNPXTDTK6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from BYAPR10MB3573.namprd10.prod.outlook.com (2603:10b6:a03:11e::32)
 by BYAPR10MB4101.namprd10.prod.outlook.com (2603:10b6:a03:120::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.29; Tue, 6 Apr
 2021 17:24:35 +0000
Received: from BYAPR10MB3573.namprd10.prod.outlook.com
 ([fe80::50bb:7b66:35ee:4a4]) by BYAPR10MB3573.namprd10.prod.outlook.com
 ([fe80::50bb:7b66:35ee:4a4%7]) with mapi id 15.20.3999.032; Tue, 6 Apr 2021
 17:24:35 +0000
Subject: Re: [PATCH AUTOSEL 5.10 07/22] scsi: iscsi: Fix race condition
 between login and sync thread
To: Sasha Levin <sashal@kernel.org>, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
Cc: Gulam Mohamed <gulam.mohamed@oracle.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
References: <20210405160432.268374-1-sashal@kernel.org>
 <20210405160432.268374-7-sashal@kernel.org>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <be0783c0-4ca8-d7fd-ce97-c24c2f1d8e84@oracle.com>
Date: Tue, 6 Apr 2021 12:24:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
In-Reply-To: <20210405160432.268374-7-sashal@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [73.88.28.6]
X-ClientProxiedBy: DS7PR03CA0165.namprd03.prod.outlook.com
 (2603:10b6:5:3b2::20) To BYAPR10MB3573.namprd10.prod.outlook.com
 (2603:10b6:a03:11e::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [20.15.0.204] (73.88.28.6) by DS7PR03CA0165.namprd03.prod.outlook.com (2603:10b6:5:3b2::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.16 via Frontend Transport; Tue, 6 Apr 2021 17:24:34 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 45b6b8ac-2846-4fa8-38fe-08d8f920d92a
X-MS-TrafficTypeDiagnostic: BYAPR10MB4101:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR10MB4101FC2D2060C93C440BC54BF1769@BYAPR10MB4101.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:172;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: A4ojK3HTy3NZZbw+BSXsjKsAxi9pNz4HnPxN5WhvdlvVAoOO5WU22syXKhIginHNRIZ1Z32lt70VHHfq/CmYFVI8WLDCbqveGYxToRkpxTOC51tL2QoSRZO6PmUV1rt4mXktBAWe2doLLxW7NL6ewJ+5FGei9wbSMFYeJb02BrZ4/SVjIFgsQHkgpVLlcapVnwfyHhB1Z126LaumWXQRNodHoybPIW1+JrXY0DHhnZxe6aaIzwjFAvoMm/YxLwvfwJGHbqusd42ZErLkJJTbzS44YrheZotU7yoKH4t3EIl2gBCwQ08CZHn6THZuSMkYkEkp5qF1hutsUIFHKnjFIdJ2q6d2XvKT6RatHm9vKeC/9RXEl66CXwOGwbvF6+D5h1YOr8jMxdkTW02yzF5ZEJ4B6sj+nQfEs/4UdkXXcRWhIsKo+1Y4nutLogGM5L2mqc3TU5Lx0jbPx8z6T/WAsMEganBwwjsU2iMawdK5DgXt2HDUH0mG4up2EJFlEU+/MoAay6JLZfjJCR25AK7VOhcbQcjMbxNe4yFHNXZWWFTL/8oqnQmHzElFgX6P+rbSuvqF0NZxS9qadv0wQTm9M3/BlnSRqiwsQHFWiwh0IIs0KE0UYRkwqpabISRliJRF7Dkp77GGx7CT3VFJHizaS1JrW/TjBYq62HMQDosCwfRLxdWzoWQGBiJI27+ER2CQ6a/IhR1F9a3o3UjC2/ShXnM0jATR698PE5toleUPNn9+HKzZ5RCHmtfxW4H+5H/ICCFPGcShYwxgvElvU+GqtcoXaxlCtTCcMTCsQgR5rPJ5k3WZlvdSJHcAv3On6RMrhk+3H8vlzcSIu4uyywOtTw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3573.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(396003)(39860400002)(376002)(366004)(136003)(956004)(54906003)(478600001)(83380400001)(38100700001)(2906002)(26005)(316002)(36756003)(31686004)(16576012)(4326008)(66946007)(16526019)(966005)(8936002)(53546011)(86362001)(5660300002)(186003)(6486002)(2616005)(8676002)(31696002)(66556008)(6706004)(66476007)(78286007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?dE81Tmg5YTA3Z25kczlTazhzRXFnYlF4VFZQVFROSDJpMGJtVncxYmxwOU1O?=
 =?utf-8?B?aEV5Z3FjMHY1bHhUamRmUWNsN24vT0tOYTJMN2JtQmVCQmY4NzZYTW1qeEho?=
 =?utf-8?B?REV2VDdwdzZoYWdMV0lZK0x1eEFtN3J6U0JOMU9iazE2cE5JaXJEMGc2WTR5?=
 =?utf-8?B?SzhOSFpCNm5FNkZFUGg2Q3dESXJGQXVqdGpZd3cvQ0dVVlpUQTJ5eXVDbHZ3?=
 =?utf-8?B?WWwzYy93bUN1U2tUN3VWMG9UMzMxOGNKUXpNM3psOG56NERBd3Erbnc0V0NI?=
 =?utf-8?B?a0laUjQ4ODgrc1Nwc2g2a28zMXhwMXVRYlc3SFQ5R1dxMUNCU3orUVpHdWJp?=
 =?utf-8?B?U3BHbkJkeklBcXdSeUdhVkd2RTBpZkNuYXlScXJxZGxmYWUyenpIQSsxY2pF?=
 =?utf-8?B?cmxkTFN6Ym8rSzcwUHMrMUJkaThhcjVUVnZoaUQ0S0tjYTdkUHZQc1BqU3ZE?=
 =?utf-8?B?NS9sUzUxbVlVUEZVZGxoTzBTWFY5ZjdJV1IvcVF2WkE5OG9QWGZ2eHZJWERx?=
 =?utf-8?B?eWp1ZUJPVW5BNHR2U293cWdzZ3dDT3NDbWNtcGhFamlEb0VtYXZvOVVtMEIv?=
 =?utf-8?B?N05IR2gvdGl4SXVtSG5EZGw2WHpGT2xoVVgwSWV3K1d2dHNOUys5NWRHeGRr?=
 =?utf-8?B?L0l1VzN3VzFqWUdqbXJOVTVUTVloOWJBeElULzdHU1MxSm1lV3BxWWlvd0Q2?=
 =?utf-8?B?VmwzWXI1Nm0zdVlyT0tQelpxMlg1ODRhdWtpbkJnVmtrK2FCUStITm5SSUFo?=
 =?utf-8?B?TVd5YzU0Mld0bzA1Ujk2bTY4VmZBY2dZQmdlZUdEUnNHcnJ5c1laRms2bFBo?=
 =?utf-8?B?TThwdjB5RzVSVllCM3BNaUNTOHVkazh6U0dEMmVoUktTdzhyUm0xaDFuWkxK?=
 =?utf-8?B?VFVpemVVN0Z0dXVtQ1hsVVQwKzVVcEJwL1lOVW83UXRlcEdaUHk4VWpTMHNj?=
 =?utf-8?B?YksyNEErckxrVFA1dDUxbEc1R2Q4OTEvckU5THA4bmtGdy9xYTJ5N3hHaGl3?=
 =?utf-8?B?Zmt4OUNpNXE3V1JaazI3S0tTRjJGQ2hXMHRjUHpaRmlQMnlDUFVST3lGS21j?=
 =?utf-8?B?Y3IvVEU0ZlpMa0hlelVNQmdrY0tRaVdjZnVxU2JiRk96ajRuUmhqWDQ5QUxj?=
 =?utf-8?B?NDNhRWdxVk9EUkEyQS9kRGl3NEhxZXFBdW1aMnUreE05aVlON3RiNmlMUGVH?=
 =?utf-8?B?ZXoyWkJLd1crY2VVcnJzRHJhc0NFK01qK1Z6WlVSQVM1TUwvMjd0R1htcGdN?=
 =?utf-8?B?MnlvS2EvUVdKYlJtcTVzd3NwVXR0VHEwc1BzZGRtblpzZ1hpTEFleU5UTzY4?=
 =?utf-8?B?bkZBbEVuRk9ROXFuL2gzTXNjcFI4aWtLd3oyc3dGbnU4VEQ3Yi9tL2VSWmF1?=
 =?utf-8?B?SXhpZXhsTXo4YTZpMENUK1VTcEE5QUJGTHpMczhVbGJqQU5Ea0V0ZUR4eWsv?=
 =?utf-8?B?eDdKU2dPYi8wY2VMT3RveHdsOTFzelpMYksyT0RQSktpYkpNOWhzNW5uYzJR?=
 =?utf-8?B?cDVBSjJPNGM1TlMxWHl5SlhvSm9Wdy9ZKzdrMGdpb1pFM2JQM2dPalBQRVpH?=
 =?utf-8?B?TCtLdzh4Wk1xZWxKR005R2xCSmxIWE03bXJQdFloaGJkYmthS1V2UXZBRlVi?=
 =?utf-8?B?WU1xVFVreXZmZFBtT3hrOWdkQ0ZOUGxNSDlzNHBvSDBWYlVxZTJoNTZ2Njdn?=
 =?utf-8?B?eUVhMCtoQ2d2aVBtTFYrSUc1SE82L2lRUFVUdW1lYXRZZkh1Z0FtTFhOUUV6?=
 =?utf-8?Q?VDOyIS4LSsfM4/uc9GSFyZnw+aeot6+eydWKq4/?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45b6b8ac-2846-4fa8-38fe-08d8f920d92a
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3573.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2021 17:24:35.2906
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BuNTrPLEvd9Vvu3gKqDkWs+LZsWAbXQFEI1K3PMNGcaGS8+TiLRin3Y9I3gfhq0Op5SyLRX4JgHd/VAqznpBKzMWxiaDi4zt5PuqyrIGqkw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB4101
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9946 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 suspectscore=0
 malwarescore=0 phishscore=0 bulkscore=0 mlxscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104030000 definitions=main-2104060118
X-Proofpoint-GUID: 9IUW2wQxNYzuV7AwlPv7NwzCTGxzRRlt
X-Proofpoint-ORIG-GUID: 9IUW2wQxNYzuV7AwlPv7NwzCTGxzRRlt
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9946 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 spamscore=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 phishscore=0 mlxscore=0
 priorityscore=1501 clxscore=1031 impostorscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104030000 definitions=main-2104060118
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=b6C+6Y4O;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b="kD/PAfS5";       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
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

On 4/5/21 11:04 AM, Sasha Levin wrote:
> From: Gulam Mohamed <gulam.mohamed@oracle.com>
> 
> [ Upstream commit 9e67600ed6b8565da4b85698ec659b5879a6c1c6 ]
> 
> A kernel panic was observed due to a timing issue between the sync thread
> and the initiator processing a login response from the target. The session
> reopen can be invoked both from the session sync thread when iscsid
> restarts and from iscsid through the error handler. Before the initiator
> receives the response to a login, another reopen request can be sent from
> the error handler/sync session. When the initial login response is
> subsequently processed, the connection has been closed and the socket has
> been released.
> 
> To fix this a new connection state, ISCSI_CONN_BOUND, is added:
> 
>  - Set the connection state value to ISCSI_CONN_DOWN upon
>    iscsi_if_ep_disconnect() and iscsi_if_stop_conn()
> 
>  - Set the connection state to the newly created value ISCSI_CONN_BOUND
>    after bind connection (transport->bind_conn())
> 
>  - In iscsi_set_param(), return -ENOTCONN if the connection state is not
>    either ISCSI_CONN_BOUND or ISCSI_CONN_UP
> 
> Link: https://urldefense.com/v3/__https://lore.kernel.org/r/20210325093248.284678-1-gulam.mohamed@oracle.com__;!!GqivPVa7Brio!Jiqrc6pu3EgrquzpG-KpNQkNebwKUgctkE0MN1MloQ2y5Y4OVOkKN0yCr2_W_CX2oRet$ 
> Reviewed-by: Mike Christie <michael.christie@oracle.com>


There was a mistake in my review of this patch. It will also require
this "[PATCH 1/1] scsi: iscsi: fix iscsi cls conn state":

https://lore.kernel.org/linux-scsi/20210406171746.5016-1-michael.christie@oracle.com/T/#u


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/be0783c0-4ca8-d7fd-ce97-c24c2f1d8e84%40oracle.com.
