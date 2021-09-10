Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBAMY52EQMGQE25UYGHA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFA8406FEB
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Sep 2021 18:46:59 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id m26-20020a62a21a000000b0041361973ba7sf2013828pff.15
        for <lists+open-iscsi@lfdr.de>; Fri, 10 Sep 2021 09:46:59 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1631292418; cv=pass;
        d=google.com; s=arc-20160816;
        b=yxkPeIkYYExVASyYVRIJSOPzrcOcXne/OMKsB76P9qA1ZRGP78U+BY2eqXbxDR7+op
         4TebMIzlbe2yAduHUq7kDc5zOP3qeM0Et5UzMiKQrYI5josbpCkRYQJyTZw8+V3Yde3A
         tCpslyFNi+jhw3pT7QftlK9tVdf7PBLIxugSttcr732IgPPPLRaCyCwMpm2XUVielw8i
         HPn/HLlFnqonQmqD1clAm84iefIX10gJ6xZdROaUGv3LdY5rZ/kMUSiON5nd8nBH9sT2
         NTcr78WWXzKTquJlbB/FuH4MyqZKDhPJ3CU0Xoo+I10lP1PJgXT8RNDAi08ot1zW1iDq
         tzLw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:to:subject:sender:dkim-signature;
        bh=O8Z6k2Go7WkgT3Q3m4bUSgfHelSvuLDzlrvyw4oSCPU=;
        b=T/x6mL9Fp28Lzb7RTFandlAwVMcyCJHX92K+myri6UoMdqcy8z/S4cwWVvG/tVOkUR
         DwUYUHLo0wL20soH996iBP/gH14dGI8qC1o32lO8q0NenygkHwL9axV5Qp4FZ8o5QuXs
         THaB+T4IBuhMv6fNFLtF3c6KdqP22hHeZcB+4uU5mEA5hMPJRm+xxzFuEdk8q3ge1Gvp
         PhESGaHt2uEdEC7jY1FYlxbef0x22q3ljzw4L21oD9rv35mRz9BbGWx4wUYXyG5uGwEq
         gZI3L9LbWKzu3wJBqc+rGwRL6UnUhbgm0ZQ8KthyZD16vnn0LBj2ZXi6kSoLDzNkZLiE
         mONw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=OSVSg6G0;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=dk7aBKh3;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=p3XqLqfe;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=O8Z6k2Go7WkgT3Q3m4bUSgfHelSvuLDzlrvyw4oSCPU=;
        b=tfvYmIIikB3rR+ejSGzRwFyzNhbvElG/VBrdtbVL9U0KkKOpxY17ZYj+ddIGW8hq5U
         VLmd9v3Z20zdbCYop+HXTPhWPE20nkUwAEOAWu1swvJsXBB+aAUEnOA8slAWsxeYdCJR
         S/Rmc9lRD2qbfK6KB7d2UL+y1P8pjixVg5wOTbcnoYbeq0ymHCQxGjxVlJXTpJaexgDG
         eWuwYDYIeWUaXD5ziUog679IvmG6/gph5bje0yMEHiJNSMCNEYdCjmQQ63NtFHJT1bym
         qH+8HlhEsdg+DhmTsaNeXx/Ui9qFEMUDIVAtLODftHfcV1MarO2RdiD9p7mzJrbx1uuN
         M6kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O8Z6k2Go7WkgT3Q3m4bUSgfHelSvuLDzlrvyw4oSCPU=;
        b=PYlH/7siyBgqTzxa72MU8WagniS1Q5QwrMO0R1ZLO/pg/oM+BkR20X70WmvyP786OU
         DlNtXIpqC6sceFUkluaOAYQr2fFqeMLfnTxWDBaZOrOqCQboucnBH37WKRqp/lQKAiN9
         v9SflVFkf/fKk9csIGm++7SY5FDugK+Mk57cf+TgKqCNKzql8VRgjb+JD7BFuoE+Xped
         QhODRpsDTeI8a8oDePul6ws/3zh2/CTjnXlCE1UyHnOFdGUL0yJLIDQg9Ac4PAyf5wGU
         O1NqIyqmz+wmi9kMVfNcbIO9+b7T6qGBg109yDMImtigHeAeaSywV4HiuLTSqli8x4gp
         NGQg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532rKCDnQytZDDlTXJBouM+IdwTtOgKKp/rw9yHeOJB7K+0RsVCh
	b+R1RML6kmU1vrw7F6eixvw=
X-Google-Smtp-Source: ABdhPJwyWC508jWgX7dEXqMaGbIw47wUmZtASFNTV4ZX6IcwST4ePshynNcddDZ6FAir7Is52V7wqA==
X-Received: by 2002:a17:90b:3ecd:: with SMTP id rm13mr10710471pjb.4.1631292418068;
        Fri, 10 Sep 2021 09:46:58 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a62:848e:: with SMTP id k136ls2535155pfd.10.gmail; Fri, 10
 Sep 2021 09:46:57 -0700 (PDT)
X-Received: by 2002:a63:fb49:: with SMTP id w9mr8001614pgj.156.1631292417367;
        Fri, 10 Sep 2021 09:46:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631292417; cv=pass;
        d=google.com; s=arc-20160816;
        b=desDDf+kZipnQL1b3QJ4620R6dtwDML3OnQlrKz4Kyc4/g1AE0zqq3GOsA5B9j3pYo
         fpFekcenz6r0R3tljW1E5yEdrdLEEuz4rMfW1MRhshHi+9n3Srfq02ysoo0pVvRQeCgF
         luUXIX1RfUBLotPAyDgOsras8TsBPZM8aBJL8t9pbaWJHpSBQ03h9Icbydw0L2pMEO+s
         NcObg2rCBVul0F6UxoD+NP5Ko/vMN3EuOduWbSc6nWoLK3mWzbs9iEfgzM6WrhTl1wHR
         SOK05ABqW6BAq1c4+nTWoCVTSPOANWdcKZDlaK4luNgkTgZOELrUtwHLA7ooCDNVoIV5
         8ZQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature:dkim-signature:dkim-signature;
        bh=EDo73wPqUxx+/Ae576NdMUoHle/LLbuPOlHzbBAJF1g=;
        b=InfHlGglV+Lk1shwgjN+vwdt5JrtJHNmrE7r36zBdjSkIWX8r8GPMz7s4r+f6KZnOF
         Ahjl4jEsvCFB6h+k4XO0FvI7ZjcxQ10IKwPAhrdtRLfAhNFSIaiz/FG0FDHF03kBL3/E
         W7awjjKN9+ZKOOciBLcaeaY03YD9OFNoaFGi/RDW90KjLMY6kx22z8ohRpQaB6yp58xM
         umyY06BoUQgLSssX9QrRN8UOACbYARsfy1IFUfizwQR7Cn5pmfwEBjihlDouaeilMpNa
         ukYiwD3+j7RkRIZKvoQSozdjGcCQFyrDei57G6iT9uZnGqvIeUpgQxKljV0HqGcURR8d
         m/Dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=OSVSg6G0;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=dk7aBKh3;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=p3XqLqfe;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id g128si524502pfb.1.2021.09.10.09.46.56
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Sep 2021 09:46:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18AE3OqX023692;
	Fri, 10 Sep 2021 16:46:55 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by mx0b-00069f02.pphosted.com with ESMTP id 3aytfkaemt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Sep 2021 16:46:54 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 18AGiwMi073830;
	Fri, 10 Sep 2021 16:46:53 GMT
Received: from nam04-dm6-obe.outbound.protection.outlook.com (mail-dm6nam08lp2040.outbound.protection.outlook.com [104.47.73.40])
	by userp3020.oracle.com with ESMTP id 3aytfdmqke-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Sep 2021 16:46:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=laaIIU8OhdRzMTRjezPrrOCS2eUmF2x406mH7vDrKT9PBsCyO98/QGWy206+ZMvdYWhNLoPPcJ31mWLNpq3sbCwSCOllut52TGcfEHV+ymturlAtUHSQRqrq/8dBJFa/nWUhXNkBITSKXWo7Mu3ktHUp/WhT26HrPzNgD6p5hDB/Ryh8rDjFXaA8aZJWMIvlvhNpej2oQK47BBgv25NK3a7D+lj+POyUYuviQTNiAQ75h8gGF7sfQiMpk1Z4t+Vp/XRgV4zlA4h2RWXgg0L5KlI+HnpXPdZZdNrd4PxbeSNnR2Offj9/9OEanFmeMSMa3IETSUmg04fXn6mBYPWGFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=EDo73wPqUxx+/Ae576NdMUoHle/LLbuPOlHzbBAJF1g=;
 b=gCdhJ/SyE1S+G4rnM+p09fILGfL/a4VaVNoHq9G4iCwAdwRaavWEGs5qbCt0Osycu8eoTBeyXDxb6syHJDelDbOTsr9s4gDKpU/c15yTQxdH3uvB74CL9J2+F2DvgVUtLCIBsV0lW/hcqc3kIUmVDNKVMe9QGY4+Bh2FBL22YhjKBKfwl/F2J13JSZW4JSvKD3TR2jGdFjk2bawhtJ3lEeW0wdBv6F2lkoVhQE80j70CGQ1QkxxIXdnDssvT4VM6owiQROz4iamzf0O92YwuPeCCxYSqLYuEZcz6ET7uJllX/mqyPIYH01bIdcTpIAXjR5U5e2KmI5nvMYXSmGHgjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from BYAPR10MB3573.namprd10.prod.outlook.com (2603:10b6:a03:11e::32)
 by SJ0PR10MB5487.namprd10.prod.outlook.com (2603:10b6:a03:3b9::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Fri, 10 Sep
 2021 16:46:51 +0000
Received: from BYAPR10MB3573.namprd10.prod.outlook.com
 ([fe80::5881:380c:7098:5701]) by BYAPR10MB3573.namprd10.prod.outlook.com
 ([fe80::5881:380c:7098:5701%6]) with mapi id 15.20.4500.017; Fri, 10 Sep 2021
 16:46:51 +0000
Subject: Re: [PATCH 3/3] scsi: libiscsi: get ref to conn in
 iscsi_eh_device/target_reset()
To: Ding Hui <dinghui@sangfor.com.cn>, lduncan@suse.com, cleech@redhat.com,
        jejb@linux.ibm.com, martin.petersen@oracle.com,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20210910010220.24073-1-dinghui@sangfor.com.cn>
 <20210910010220.24073-4-dinghui@sangfor.com.cn>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <4bc7187d-0461-d42c-3a8a-33c0a0a8c1e0@oracle.com>
Date: Fri, 10 Sep 2021 11:46:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <20210910010220.24073-4-dinghui@sangfor.com.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-ClientProxiedBy: DS7PR06CA0020.namprd06.prod.outlook.com
 (2603:10b6:8:2a::21) To BYAPR10MB3573.namprd10.prod.outlook.com
 (2603:10b6:a03:11e::32)
MIME-Version: 1.0
Received: from [20.15.0.204] (73.88.28.6) by DS7PR06CA0020.namprd06.prod.outlook.com (2603:10b6:8:2a::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Fri, 10 Sep 2021 16:46:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0a343f22-d732-4c46-c48d-08d9747a9688
X-MS-TrafficTypeDiagnostic: SJ0PR10MB5487:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SJ0PR10MB5487062F6AB95A64DAE1B241F1D69@SJ0PR10MB5487.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:20;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y3dKhe2SGG3YVH71xNTCqKU3n8J5bCRhlX5zY0mp0nyB4c5ENs+rxLBtahZ25sLbLx515E9hlU0K3XfBBzYKZZ7Muw/HYLo26M82JAX3t5XEwGAAtEze7LCmoJnmbT8Xv0nBfaGSjVBP5KsBzgkHwMNUFUQGWGHeSSZYqZSeXM8Ds/+pXX/7+YrZ8T3q0YyxE95Y0hwCnTRVZSUEm5iRzQixYnnGcZJ4jLzd994LZFTUDcr2IdYy+l5h1fX2iY2kOxvzO97W/RiPOG65VTXTCgjmPmn4b5JJtZq5gRzjvvAfVHFxS+YPbGYABw4mM0QLYFmrdYrlZaBNrMQY+47+q+RFZt9a2SNSdpnZtUKNiXvlCdxk5snYMbGKqS6q8bJGWtcdhJzIV40Ny3UwTqfhlERCiLnMAnE/4nex3zIshTRZuZz3NN4tyw02duJDXamDitdnjkhm57lB4UD+dzyYSK0eUvgaj2gIAs2h+r2JWVYsUrafCoc+cS5ZkGbfXv5MCRZw85C3bvhi0I5bw5c0Hlale2lfwl+OojacvXaDAPEfmX3v6qKrc70Xw7d7wdaK+PFkOY+cKFrzWhNPNKX9Iw2iHniXpZ+cSx+9eImyrabf4Hc29dHCIFQ4l4glE5I9/MHqQcgwuycbPCAAxAjd13028ysu9dM1TL16xYQXP6C8Qle6Mw/vdzl4/KlSgo2wIdVUFOJjT+reulhGi3WqRNMRtSr5Lvo/RAOnHwuyS3uCXYON59H/UkAfg1ZrIDC5
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3573.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(366004)(396003)(39860400002)(376002)(136003)(66946007)(53546011)(26005)(8676002)(8936002)(6706004)(478600001)(31686004)(5660300002)(2906002)(186003)(38100700002)(36756003)(16576012)(83380400001)(66556008)(316002)(31696002)(66476007)(2616005)(86362001)(956004)(6486002)(78286007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWpsc2lSa3NxSkNnTEJUZ2pGaGRldHF2OEdFZWN1WUROVVgrVkdGWWNyN2Zr?=
 =?utf-8?B?UTk2M3hLV0YrZVk3TG9ZNEx6c2hVZ1lCY29mazYwaHN0djdxeThvU1JzMWZ2?=
 =?utf-8?B?ZTQxUTA3YjJNUmNsWXAxcFMxcXI1WU40QnpZd25LK0JGSVRPenp3T1IxM3Q3?=
 =?utf-8?B?NGNPeFJRNW9JL0VaOVowVW5scXZJUEhtQ3B3N0U4L01HRWF0aHJhWGlLN1Bu?=
 =?utf-8?B?UW9adE1najJUS0tWUVNKQzgvS2ZTaXZ5WmxCTWVqVzVrT05WcHI2L1NtbnJD?=
 =?utf-8?B?ZjBxWFZtWVlhWVo2MzdjeVVOTVliRktsVzY0MUxYU2xzck1veGdUMWZPaDZE?=
 =?utf-8?B?K0NDMUtLdEF5Y2xDK2dnS2t1OHNSdTl4TkZZMWRJUEg5Q3RLNkk4Ukl3M0hH?=
 =?utf-8?B?S2Z3RysxRTJKZWh5NkVRZW5EQXphWk5STWNtTDZOQnkreFlWZEdkWDFETWZ4?=
 =?utf-8?B?MkFxWmxjbjkrVkdNbElFNzBncUp1NVJSNWt5RWg4VFlPdlNvT3RuSVhMSXJF?=
 =?utf-8?B?cllaampoSU1DdmlFcXYwT0RGZkxJdGtwQmw1bkNycUlJZUlNTzV3Y0h1c3Zv?=
 =?utf-8?B?UWQzR0JhTmE0OG95WXExSzhXdUJIOGtSdldFWmVBVGpoaGd2eXB6czc2SHpX?=
 =?utf-8?B?NDJnOEtMY01vbW1kTEw1TG8wSmN5Q0s5VzBrOEFWSW5SM3VpNEpOd3diYXVL?=
 =?utf-8?B?RHF5dUw5aEtyTWtoRkNtKzB6eGhWY0JFWXhmWEYvUkVEdnNWT1dmd3Jmb3ls?=
 =?utf-8?B?a0ZJNlFJc3psNnN0NnFacURVTk5Eamx4MEo1eVd2TDhxeEp0UmxTWkZUMVdt?=
 =?utf-8?B?QmdOUmt5TFpHelVVemVGcFg4VHV2akcvbkRtR3ZPQXlGUUVVSE4zaWxTQUVv?=
 =?utf-8?B?V0JsSWVZak5SNHRoMFZ4d0pSYTN4UisyQzlkNHV3SUFxQzlsdG12MEVTRnFE?=
 =?utf-8?B?NjJXODNqKzAvZmJ6UFY3TCtWVkJnN2tpc1F0eEVpQnZwcG54c0lXYTMrMzNz?=
 =?utf-8?B?Rk8wZTE1bENwMFlSbjQzcVlMcUNLL3RjdU5CYjN1Wm5ITnZkbStzYllxTmRK?=
 =?utf-8?B?Y2gxVjdHVytxNGpodkhxanUwUVB3R3NIWFBmVEFoSUdTZEV5TXZxZktRdDQz?=
 =?utf-8?B?Q2U0Rm5qWWV4bjdaenlvUVh2ckZaSzRLYzJxVk9GWEJ3K3A2T3JsTy91a01R?=
 =?utf-8?B?aWR4bWptMUs1aHp0bDlIYWt5YklxR3VibTRjMEwxODFCSndwYmpWMFpOdmpq?=
 =?utf-8?B?ZDg4enV5RGxobkxNTW9hNW9mbG9WZS9YV2tzOUcxVG91UUdOd1RmYmNGRzZ2?=
 =?utf-8?B?a25aTUt0eFJHUDFURzBKa0V5bks2T0lSVG0xSUNiUmNiQk1TVHdkaittZCt0?=
 =?utf-8?B?SXNMTXRMYXhuaS9MdVZIMnR2cjBaZkE4a2U3akR5SWY2R05GdUtiNUVDeER0?=
 =?utf-8?B?bzA4dlltS3FqRGdQVmhhRFZjRGFDcUd3TFQzSWs4dU5oL1hQUi9seERkRnpt?=
 =?utf-8?B?eVFmY29yZVI3TDRVbVhZQStnYllYRFdOTTRjcWVacjRTQlI1NlBqcmd0ei9z?=
 =?utf-8?B?VUdSUlJ2YnJIaXArTWptRjRCbzNua2VqRGd5dVlaVyt6eS9LMWZ3WE53bUNL?=
 =?utf-8?B?ZkZMUCthRW1iZzZoS3k1NGtxdXlkV1dCNUUyd29BMFNEVHRBbXhQWU5tZUl2?=
 =?utf-8?B?WlNGTis5d1NWKzZnVmdBS1g4OSt5TXRPcGpoVHVDeE1xTzFkTHJ0L2R4bGEy?=
 =?utf-8?Q?cYqWDRentazfpQNLv4vPK/dUBBCev/DsE1zNFBy?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a343f22-d732-4c46-c48d-08d9747a9688
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3573.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2021 16:46:51.0933
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aeMb2zzLh87P4hbQ2npaYwI4NfenomUjuEBnwBvqXX/NXU+ZNWGg6hEB9BeaG66sJgE/gYQbRd4YOe7UnW1iooaS8B/ASRqVfOc7P8n0+D4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5487
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10103 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 bulkscore=0
 suspectscore=0 spamscore=0 mlxlogscore=999 mlxscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109030001
 definitions=main-2109100097
X-Proofpoint-GUID: GvuK2Qm6u7dlr-FtOLfTDclO2dEB5kKt
X-Proofpoint-ORIG-GUID: GvuK2Qm6u7dlr-FtOLfTDclO2dEB5kKt
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=OSVSg6G0;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29
 header.b=dk7aBKh3;       dkim=pass header.i=@oracle.onmicrosoft.com
 header.s=selector2-oracle-onmicrosoft-com header.b=p3XqLqfe;       arc=pass
 (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass
 fromdomain=oracle.com);       spf=pass (google.com: domain of
 michael.christie@oracle.com designates 205.220.165.32 as permitted sender)
 smtp.mailfrom=michael.christie@oracle.com;       dmarc=pass (p=NONE sp=NONE
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

On 9/9/21 8:02 PM, Ding Hui wrote:
> like commit fda290c5ae98 ("scsi: iscsi: Get ref to conn during reset
> handling"), because in iscsi_exec_task_mgmt_fn(), the eh_mutex and
> frwd_lock will be unlock, the conn also can be released if we not
> hold ref.
> 

This should not happen because we only access the conn if the session state
is ISCSI_STATE_LOGGED_IN. So on entry of the iscsi_eh_* functions we grab the
lock and mutex and check the session state. If logged in then we access the conn.
We then drop the lock/mutex to do the TMF/IO and do a wait. When we wake up, we
retake the lock/mutex and then check the state again.

But yeah, the code sucks (it's my fault) in that its half refcount half locks
and state checks like that. Ideally we should fully convert to the refcounts
and move the teardown/freeing to the release function. I was going to do this
in a patchset to fix up the EH/TMF code after I get my lock removal patches
merged.



> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
> ---
>  drivers/scsi/libiscsi.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index 69b3b2148328..4d3b37c20f8a 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -2398,7 +2398,7 @@ int iscsi_eh_device_reset(struct scsi_cmnd *sc)
>  {
>  	struct iscsi_cls_session *cls_session;
>  	struct iscsi_session *session;
> -	struct iscsi_conn *conn;
> +	struct iscsi_conn *conn = NULL;
>  	struct iscsi_tm *hdr;
>  	int rc = FAILED;
>  
> @@ -2417,6 +2417,7 @@ int iscsi_eh_device_reset(struct scsi_cmnd *sc)
>  	if (!session->leadconn || session->state != ISCSI_STATE_LOGGED_IN)
>  		goto unlock;
>  	conn = session->leadconn;
> +	iscsi_get_conn(conn->cls_conn);
>  
>  	/* only have one tmf outstanding at a time */
>  	if (session->tmf_state != TMF_INITIAL)
> @@ -2463,6 +2464,8 @@ int iscsi_eh_device_reset(struct scsi_cmnd *sc)
>  done:
>  	ISCSI_DBG_EH(session, "dev reset result = %s\n",
>  		     rc == SUCCESS ? "SUCCESS" : "FAILED");
> +	if (conn)
> +		iscsi_put_conn(conn->cls_conn);
>  	mutex_unlock(&session->eh_mutex);
>  	return rc;
>  }
> @@ -2560,7 +2563,7 @@ static int iscsi_eh_target_reset(struct scsi_cmnd *sc)
>  {
>  	struct iscsi_cls_session *cls_session;
>  	struct iscsi_session *session;
> -	struct iscsi_conn *conn;
> +	struct iscsi_conn *conn = NULL;
>  	struct iscsi_tm *hdr;
>  	int rc = FAILED;
>  
> @@ -2579,6 +2582,7 @@ static int iscsi_eh_target_reset(struct scsi_cmnd *sc)
>  	if (!session->leadconn || session->state != ISCSI_STATE_LOGGED_IN)
>  		goto unlock;
>  	conn = session->leadconn;
> +	iscsi_get_conn(conn->cls_conn);
>  
>  	/* only have one tmf outstanding at a time */
>  	if (session->tmf_state != TMF_INITIAL)
> @@ -2625,6 +2629,8 @@ static int iscsi_eh_target_reset(struct scsi_cmnd *sc)
>  done:
>  	ISCSI_DBG_EH(session, "tgt %s reset result = %s\n", session->targetname,
>  		     rc == SUCCESS ? "SUCCESS" : "FAILED");
> +	if (conn)
> +		iscsi_put_conn(conn->cls_conn);
>  	mutex_unlock(&session->eh_mutex);
>  	return rc;
>  }
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/4bc7187d-0461-d42c-3a8a-33c0a0a8c1e0%40oracle.com.
