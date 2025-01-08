Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBDNT665QMGQEK6JA2RQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DF8A04FDF
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Jan 2025 02:49:05 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id 6a1803df08f44-6d88c987fc7sf273213086d6.3
        for <lists+open-iscsi@lfdr.de>; Tue, 07 Jan 2025 17:49:05 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1736300944; cv=pass;
        d=google.com; s=arc-20240605;
        b=F6bh5M5p26oL+H7Hu/yMjzrCdM2hn+PSctIQc1JLeFlN5fb6SeDzBOlJBKxWKtKd8B
         ng4BwdjZZoI3ExpsgFNkSjfy12C3mcr4oaUzynZncisUQoI0+T/LRUOiiIkfnxuWhY3x
         CVo+Mv31rA5h0aivRfm4c0R7eMuF1RTxiOKa4cmwiC+wbiMdLpgGFOHr+7FmTfnZCRtO
         hemzPrI5Lm+fFAog9eoGCYJVE2cGrctHmimdkfXDo451qp1MJ8treDuDg+/3j0Ue6r2G
         Famu2mCHHRN3CWp0ufrJqBuwB6OL11/ek/ItojNXcWldfWnzxpAzZqqQCngPilWesoPI
         YnaQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature;
        bh=Fc1j0sxKzbpWgBfMg50AoqhetlyDsSWWrmOT5QVEN0U=;
        fh=9Ff1AO3P2TSkcdDIhFbx7UdkrVB8U9YtSYrhyGfFRlo=;
        b=JnQ3wUu9PLW+BKXvuwbJo4TB2DY49RTkMqd2iSocqeyeLuiiA0vl6pnr4cFetKeP3L
         K5S+NwYnZHlAoXOUAEQuZPMWiG9iLpe5zJ4ObCkQQsQOiC6fcOUmmKKPw7Ot/yjhmzsz
         vI+T0HR7zH6oG3GdTsmhKwk8oEgi1uO/nW95r/PfwvD1qt5QAMzgMzqgype8UgmvC1sD
         CDNtn0hPUXyLqepI47jPl1vgZyzsIjaMWdvtiH+LEWUaU2niZVwKI5k0PwBmekJOAaNE
         Rz6BUD5Nnq4+Qmq+oTbsArTi5oCh3pluc9ZH+KLrUF+QZkUxdRAaCNNFrRUDxuLHGrTP
         0vQg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b="cbGc/YAM";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=ognAHOr1;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1736300944; x=1736905744; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fc1j0sxKzbpWgBfMg50AoqhetlyDsSWWrmOT5QVEN0U=;
        b=cfOCxvA8osxk+84JK9W3jM1rAdLLad1JtyBUqXXqTK5Ity1ZtrQD+8lcuHffyqMF7R
         qHKK/7s2EhAogXNaOqjpOTMUgQ55LF71bJdU+uBRD+twvT81Z/xpY5e5flS437FWoBqC
         UiF6FsgX6+IkA9cqaZv7GEHAKmzw2yHxl/GYNQkJDxnySWa5JsnJOLZOkTpTm6N4LQQE
         j+DNZc1bVJFhSz208i39J+A/j3zBH+zgjmrTCyjEjex2PGpMZ3e+tZfy6evm7SGjqLAw
         kM4JEI/5wh+zfBf9vDkdeuIW3So9chc3JT4/IX2Gk/PeaoSgWEBAnRR94gcng2JSned9
         qIMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736300944; x=1736905744;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Fc1j0sxKzbpWgBfMg50AoqhetlyDsSWWrmOT5QVEN0U=;
        b=ZZZUOPGD9r5hT+lmvZJ03ztkZgtVX/YwxG9acY/Od0KWP6LwuMRzCcqTVsm6NGMxZI
         97Tq0JsH4fvP262hHscFlkdvLaSTri8eGKHn2q6U94LhYfjHLfNeUTmMgQiNIDDyAMqI
         RCWPtZYWZGBiGNZ1DW4kURkcN2nwaGQlEUYhSdZ0GztIo+Yx5u34kjG57f50LeiSIAWS
         v4fkDf/aspaNrFVrjxbIaxHZ8PB6haKT0W4WvOaMWYLUioTuyOH2+jFBLCgAcU9vmBoB
         HxfsL878VdSSbew6osj4SmwVhY0TOdUuwH/48zWwjL3AeBZqJlA1xqYBv76xl+e5hCF1
         baBA==
X-Forwarded-Encrypted: i=3; AJvYcCUD9zjpqzG63j+wNe8pTCuhI6y4BcFb99kjGNDIVHYtbT9LqTzmXdoODKq5CdJ77FzJHsqJog==@lfdr.de
X-Gm-Message-State: AOJu0YxbfV/swJvkwDm2cJmks6cMG/IHzrbbqxXNVUzLdaeg5S4/oOFP
	Nun1Nqm6Wru1zpWHOTJnq7c1uTFmgiBgJqRhMX6OmpShIhc0eygd
X-Google-Smtp-Source: AGHT+IHKWCEFhSFNn/d2Be6l/DB5/K+W2SudVmsDYx+futUk2/DIpPvzyrw8fqH6K0w/nAsT6KNYLQ==
X-Received: by 2002:a05:6214:5884:b0:6d4:1bad:740c with SMTP id 6a1803df08f44-6df9b1b513amr23233756d6.4.1736300944204;
        Tue, 07 Jan 2025 17:49:04 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:4805:0:b0:6d8:87d5:f97d with SMTP id 6a1803df08f44-6df8800b355ls14220076d6.2.-pod-prod-07-us;
 Tue, 07 Jan 2025 17:49:00 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCVZKADyy2s/BPpis83KlaUvgwO41EF3WlDhioiTHz45xIYkfJfq4i2vdgx8SKv7b/Fdbx8Srckj2EEu@googlegroups.com
X-Received: by 2002:a05:6122:3295:b0:516:1ab2:9955 with SMTP id 71dfb90a1353d-51c6c242f58mr1034163e0c.6.1736300940629;
        Tue, 07 Jan 2025 17:49:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736300940; cv=pass;
        d=google.com; s=arc-20240605;
        b=QwCINuWkQ+E06tvhbc3PmJE/FTHjRyfNsgP1M7GqQpEhBM2yNQv6jDqYoWjegABYmG
         7Fl8q8hZxG26Hi1oIUIiLYTgwfxcAN/0e3hgzFxqB9pl6HoNNHQxY9CoKHxYcQxwYFHH
         Os18P+XBeTBsFK7oyUDnfCDQjKzt/WSkwr53kRPRXXJtLveeop7osm7ND8KEQWxmBasa
         FDVU+pE5/eWP0c33XSxj08NHZlaHH8iGKYh4U0dZgV08C0fTr+XmJTt6mO+ohhQc9ylq
         9iVCWe3hqoomMQMbOkt8gO1OIeN5+m+6BAXRRrTqmXuM1j1eHBz8OMqB8gk/RpKi+Dtg
         IGRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=C9GJAF1i9ypp3LIH3Gji7m6RXdCHpM48pRw9cxMk3U4=;
        fh=EZuYQRWNr9ek4yI6wivpVUPP7JTrl44EZLbefanBdzY=;
        b=dJcwcxfY06p1c251W2AIo/2yyO09YoGSGj9dr8z8MLBUoP/+tRKPHvNPEPKUOtbEPJ
         KiF+E6i/ADqS7f3yb0A2mSUXjUs3YqJI8c4B6e3WkWvzDlCy28Mxws+Wip1EfCBP0+Vn
         8KDToXUJ31miLhs4/MOucekNCBHUHO7eIT84QU3AzUeTeX7ifz6OAsKznttqpSAQg5UW
         aQ17DkYDK0Ut0xOIn7iCTe1c8l5ozTfm7g8nDqH4Mr/ax4HZTSjrLvoO77D+yK0mH/lN
         OFdr70zl5//GMZtj3VtCLec7YjrUtZXEMSeAyy2vLEQFVRWb+yUaUueVxFG/wvzx5jsm
         x3qQ==;
        dara=google.com
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b="cbGc/YAM";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=ognAHOr1;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id 71dfb90a1353d-51b68cf47cesi1266684e0c.5.2025.01.07.17.49.00
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 17:49:00 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 507MMh9L023886;
	Wed, 8 Jan 2025 01:48:58 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 43xvv95nvy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 08 Jan 2025 01:48:58 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 507NAjU9005424;
	Wed, 8 Jan 2025 01:48:57 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2045.outbound.protection.outlook.com [104.47.66.45])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 43xue976hs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 08 Jan 2025 01:48:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iO+9UArRjGWXOCkB/trCIIbqDbNL5EmgeKn91cJg/4Ok8tANz/0OffzmoDTdD/wiNiF/3pzcvuezYABRd2t8YAcJipDU5JgicVO5h9Wr+KE3wSF1CNviqtNOmfsrMZkBlFMbzf8yYIj8CAoRgEsf9k7mU2j08Dzr2u0sHWTJ2B/7M3io4I5If2xpvEO/tYxPg9PhA7gSaGVRGCUqfnCUeTVeHvbHGfgRCNEsJzeXLCNc4xAFomEd3uh4v3HeNZTO8blDkJQfdZlR5yolk1pGb21awxmwyO330NyEpHMGJNNTJ2uFxNSC2/uSSlKeyFnlMZ0SBIXwCHLalVADMtygsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C9GJAF1i9ypp3LIH3Gji7m6RXdCHpM48pRw9cxMk3U4=;
 b=M7pLgGjChp9tsjnoEpORBQqKc4NIDxbm1UShraA1efN1BK25x/jVHTljwuN9RfFRPOg0cxE13xQMf/xOygyMHjkW5SKjgDXpIlJcDjUZRmdzHMbrrMkeqg3fU+iUta5CfTvLxJ5hybq3fEP0eo3mibd8x5e3rh9/EVAZPp+ppNuCH4LnhWjSoXspnWakt1CVRqQgRi003mxGnuyaFACJ9/jzA/140BrCOvpPQqKsbVi75kLLpOQSSGN9LH68JxLELW+gKzGZuY0/euwBy2jjgIRXSkJ5aYPl1Bgs2ELbIxjGNHDS+ynXRu1kS+skLTqYVf+pi+w365FDexQy2NmhRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY8PR10MB7243.namprd10.prod.outlook.com (2603:10b6:930:7c::10)
 by PH0PR10MB7097.namprd10.prod.outlook.com (2603:10b6:510:28f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Wed, 8 Jan
 2025 01:48:55 +0000
Received: from CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::b779:d0be:9e3a:34f0]) by CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::b779:d0be:9e3a:34f0%3]) with mapi id 15.20.8335.011; Wed, 8 Jan 2025
 01:48:55 +0000
Message-ID: <350549f3-3647-4cbb-b62e-8881a78dbb97@oracle.com>
Date: Tue, 7 Jan 2025 19:48:53 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] scsi: iscsi: Fix redundant response for
 ISCSI_UEVENT_GET_HOST_STATS request
To: Xiang Zhang <hawkxiang.cpp@gmail.com>
Cc: linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com
References: <d9be3663-f6f2-4a1c-bd88-2a3978f92bb1@oracle.com>
 <20250107022432.65390-1-hawkxiang.cpp@gmail.com>
Content-Language: en-US
From: "michael.christie via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <20250107022432.65390-1-hawkxiang.cpp@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DS7P222CA0008.NAMP222.PROD.OUTLOOK.COM (2603:10b6:8:2e::29)
 To CY8PR10MB7243.namprd10.prod.outlook.com (2603:10b6:930:7c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR10MB7243:EE_|PH0PR10MB7097:EE_
X-MS-Office365-Filtering-Correlation-Id: c38d1fe0-4494-49ee-7e30-08dd2f869c38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bk1obHdzTHh0R0J1ZktpS0Z0ckJVZ2JCTEs4TEY0S1JwSXdFbWcxYklaWTJs?=
 =?utf-8?B?VXppcUhvMW12aml4SnRubTFldjllOHJNYU5YUjhmWXc1UWZOczVqT0hXZm1G?=
 =?utf-8?B?YnNhMW81a0lyT3JHVVQxZ292SEZ1amMwcUVRRWYzaHk1THBKTG1GN2NaVyt2?=
 =?utf-8?B?dlFKNU1NOGFwd2lXK1g0WE5HQUNCUnBVYlp6UDcyM2lvVUE5TGdpV1R5WjFs?=
 =?utf-8?B?M0NBV1JvRVF0RXRoYlBZdnhsWEptYXgrR1owajM4R1E0Ty9tU25BbndQSkRD?=
 =?utf-8?B?U3V3cUtaVklXRXNyaHl2blE0dVZFLzBCVFR1eFNaMFJNQnE5dHlZYmtqUmNH?=
 =?utf-8?B?d0FiQkljSG96QXgrZnVtZ3NUNTRISFhUYm9mcUYwSHRoeU9RMGRYUlJjUWhl?=
 =?utf-8?B?NnVrVS9kTVNJMFN0ZU9pSUtoUlZlUUNyOURWWmNaQ3R3Z0lQVzdkRnlvSnhj?=
 =?utf-8?B?QkZ3OFovQU1wWk1JcFJhbDFmOWJLVDg2MWxSRXNNLy96WUtpWVZBUEZFeHkv?=
 =?utf-8?B?Sk42SXhRc1Y2NThEMCtMRmI4OUI2M1pKcWRJVnNyMGxDMTNsc1loNkpndVFm?=
 =?utf-8?B?SnpMcDV3aE5yWVVzckVjM1NkMDdIUjRqSTJMcVJmZFVFa01hVFVFZU9oOU90?=
 =?utf-8?B?eWI0T1hlbUhuUER4a3JzOWttdEV6SUFpVFFZaDlVTVhRcHg0QXF1a3FOZkpv?=
 =?utf-8?B?RFNGOGhhblJFL2EybCtNMTFZZmVQR05zY3c4Q0tTdTQzVkI1UFovVE9VV0E2?=
 =?utf-8?B?S01NNmV3aHRnS0dpMlFSVElNOXovWnQ0eksvc2dianJGWGtOVTFsc2tuMERn?=
 =?utf-8?B?YVF4ZEtZZWhES2NaZU43aVNZTk00YXpmdDZ6NktrMWpUdG1Qc0dTQmZMYTlG?=
 =?utf-8?B?YXpjNHYwNXdEZzBGWEpuSUNsa1ZDL0dVVDZyR1pibmNqTXVvSnZQYjNXMG9y?=
 =?utf-8?B?aklXY08vRmtZOWIzUUs4a0pRc0N2VU14THNzYTVDOXFHdnZLMTMxaXdQek1q?=
 =?utf-8?B?QVArSlp4MmJFMTFHTHMzTGY1WVBmeGNmc1pUajFTaTFscCtlOXB2ZDlDMUFC?=
 =?utf-8?B?OVlyRElUMTJlbW8wOHAzZnJBbnpQY1pMWWFSYks3ZWFFb016VWc5TjRCNHdI?=
 =?utf-8?B?c21zL3FOTXRzU2FleHpMMFZZSnRSRGVRK3dqRGFpRVVWV2lBWEFIOWp6eVVn?=
 =?utf-8?B?Ynh6UHN4eVR5bTRrNnRtUkI2K1pvVGs3Y1ZseHFObm5tak0rY0FzZ0lmOTNh?=
 =?utf-8?B?ZmNRRTM1K1VFUWJ0aUtpZ1B3ZzVoaDFMTENzaU9DMFFhZ3hSV3dyTVo4bCs2?=
 =?utf-8?B?eW1DYjMzNlJJYnRRYVF5ajNpSTJxM3A5YVJmdTl5bHpVb2k5THNJWTkvK1BK?=
 =?utf-8?B?N0p5V3dFNFN1c1ZKNUFBL3hGQkNIamZ1Wks5bjNKcHdkWnJlWUFlTlYrdDRS?=
 =?utf-8?B?S001ZlFMS2MzdysxRjBXdmg4WVN6M3Vmck1aTHF0SU9DUFZwMkczU0xpVitX?=
 =?utf-8?B?dTEvTGtBUHJ3MTMyaTBVUVhyTGl1MVBMLzFCTTdCdThoV0RTcEpMdmMvV2lm?=
 =?utf-8?B?UDhYYWhqci9yS01LMUxCVXBUdFFvNmZ1L3BPc1ZpWXFyUXk1QXBUdHVDUXNY?=
 =?utf-8?B?WHUzVXhodVg3QU5BaXVuejAyZnNtRFB0UytzZTlzRndKdW8xVzFHV1lvaG1G?=
 =?utf-8?B?NWZXWFZhcXI2ZzZacHBvSTJ1K1hoU29NaUdKMGJWbHFUcVdwMzVmS3k2cnNY?=
 =?utf-8?B?djhyc0t2NE9EWHpyWTJZMnlJZjdzRXBSeWpYUG80anhjdlhlUGZXaEY0WCtT?=
 =?utf-8?B?czVINWpTQjYybm1kaGk0TXVsaDNZMXFXVGJwV2xuSTZwWnpIRmpiNWdZVTd1?=
 =?utf-8?Q?AGTiT6U2x+Sii?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR10MB7243.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MyttVStrSkRsYkJlVnNpUXhRNVhlS2ZIYjMrT3g3ZExJUVZwaUxPTHlWaGJo?=
 =?utf-8?B?TzBuc3RCQkVIVzBzVE02MVptOVhEUXdMSUJjNG5RakJQU2hISSt1UkhLOHF4?=
 =?utf-8?B?ajhKTEI1QXVobE9DYjlWM0s4Q0hBcFhKa0I1Z091UHJHcy9BdkJGRkdQK3Mv?=
 =?utf-8?B?d1hoQ0h6TzBMeGNaVmlNT2lXQ0kwY1FpNkRaaWQ1dzZlVWtYbFlKdWgweWNr?=
 =?utf-8?B?aXF2anQzSkRTcmhOaUZDeVNwbm5NSlloNzhIMVE3S0xOb0tOZGNkMHAzai9J?=
 =?utf-8?B?VFZJaTN3VTlKRUtYb3c5TCthNVBnRE9ZMmZzc3lydHlKaTZ2cFNJaVF6K21V?=
 =?utf-8?B?YTVaUUN0anlKWm1KblVZa2dueURYVk8yMUszVmZEeW5QTm5ValdCUFZ5UUVU?=
 =?utf-8?B?Q3lBUXJabkU2OGYzajlKRzdpTlFNSEI5b0VTWTJkdkt1WUlHWlY2b2NwaEha?=
 =?utf-8?B?VjlnWmhseWdlVGlibDEvREUxbUtidjJQS1hOamxyYm5mYm93S3pLY3VwK0RC?=
 =?utf-8?B?NFVjZ0ZHY1NidzV6WGdRUXE2OWxaZGlCa29GOXNPQ0RUNi9kTVNKV0I2d1k0?=
 =?utf-8?B?ZXVjZXI3N09rVzhTblFkTjJNa1llbmU3dCtTWUN2T3dVZk1ZWWc4S2l6NGxO?=
 =?utf-8?B?K2ttY3kvbmVuMkVXSzNmaUN5eDRpb1lKRkl1d1FjQUI5cFlNNDNabjZINHR2?=
 =?utf-8?B?anJZVzFCc05aZlZnZXFRWldIS1gxTnkvcjlWZkhET0FmSFhpME83SXFnemZj?=
 =?utf-8?B?dHFSbUVxdDdjdUhJNTRwR0VXOFQyYlM5YVoxUVV0VmsycGp3OGNtTUtJNTZK?=
 =?utf-8?B?Q0FUMllGdkM3ZVdSYjRCV2ZvaXNWSFVRR2gwWUZLUEt4SXdTalJPUUwzemNo?=
 =?utf-8?B?cUVRSnZINGtHcTU5b0paeitiU1RYcXJaRWE4ek5iWk04SFM0R21MS3NKN0Qz?=
 =?utf-8?B?SkhOeXNSZk00NndwcE1Eb0ZYL2IxY3RjN2pnOSs3TjRKZkUzdFI5SHpNZk03?=
 =?utf-8?B?SmVIMG1qcWRwVU5tSGh6TFAxZVdGVkNXYXFIMEszcW5aR21ZQkNpWUJHRWZO?=
 =?utf-8?B?NkdxaE55YkNkeXlLMmw4dkJUK1lla1F1aWxmT2piSURDazhGVTNHS1FaL0ZP?=
 =?utf-8?B?K1NvS0t4TFEzOFh0MWdVN042VmpvY2tPN0x0VVp2T2JmNlladzBNUnlJaDh6?=
 =?utf-8?B?amNxRjl0aW9PK2dhMU1HM2FSTW8vNEh0UDZTdkhZRGF2YWkrdldnbTk1RDE0?=
 =?utf-8?B?SUZGYnFJcTJLZTBJRXV2a2J2OWtzNE5FRFN4bWljcW1TTjFxRlErcThaMnJm?=
 =?utf-8?B?bUlWZzhCeTk5STRzMGI2TXhRMGZhSTI1dWVEZ0E3eFlBcnVpZUEwYVBnRVhv?=
 =?utf-8?B?RTR4NTVNTkdPNFpoMmdhV05LWDhSTmZNQ3lFN3pnVjFNTHJRMmZpZDlHNlpR?=
 =?utf-8?B?MythSjNDMDZ6enZaV3BDL25qZE4xMno0RzV3bXN3THNNU3RQeElWajFkOVp2?=
 =?utf-8?B?d1QvdlpNR2JlQWZtOXozbzFTUmduTXFROVVlWE0rVHFSeEI5bDNQMWtlMlhr?=
 =?utf-8?B?ODRBUHRaT1FDN0RtYmgya3YvMFlLQWtYY2lYOEg0NDdIZlk2RnZBQVVLQ3ls?=
 =?utf-8?B?ZWZmS1FITjFkTHluYUlQeEZSMFo4RVRUQTlqblJ5TjM0dVI0RW84MmRVN3ZY?=
 =?utf-8?B?eGtoK1VVMjZsYjVmNVJmZk9xMXJvVUpHc3o1NTVielZZaVZzeDNDOWdWUm1x?=
 =?utf-8?B?N3V5RkRHRmZ3UTZCcXlRN0loT25SYXRsWEozZkhKSmRTN3NvZTVDdkM1RkFE?=
 =?utf-8?B?QzF3NzUwb2dzY3owZ0M3M3dsckMxQW5wejZWMTdDTWx1ZXFNQm5vQUtoNjF1?=
 =?utf-8?B?NVpKZlF3cEg3MER2R3ROdXJmZkRRcXBUd0RtdVMxV2pvQSt1cHNqbm5WM3l2?=
 =?utf-8?B?cEJQcEJXbHo0MGlVbWhBMzJsc2JwSWY2M1gwSVRreVFDTm9rdTBOTjFFVmZr?=
 =?utf-8?B?ajJLUjdvNENmQ0ZsN3AxcVUxNXExcmpkdGp0bnpIMk93Vk9ONnQyMFdLRDZY?=
 =?utf-8?B?QUtiRVRpQmJuL0xjVFdVTWZYcDNPeGJvZHovazZCSW5ITjJrTzd5VUlxQUZx?=
 =?utf-8?B?bEdiMnJRaVdtQ0tZWnJNdU5DamNNUmpWWDBDSm13ZGcrUzEreGNrZkpOK1pF?=
 =?utf-8?B?eGc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: Brc0uwZy3toHHgjSXe5RyXQnDohcDEKMCkUsYWemGpt0Q1EMwkFtT3GGIBVWQ7jAjLQzcO4+WAEgiIYsSVHXD1f3S+lHhYUSEsII0gBnlO2JJDWtp53fb9TUizrFZ/IGhMN6STfJXqP8XMRP+iHLn+ny1UylAjKdsREQwhso3bceIYGJrzuKOtN+HYsBoEEoY9AP9u5WjFhsDPw5rXwoKh4/4JGA7tQd82jeVtiVtXK7dLi/muwObJjypUVBOvnn+uC7cQ/w2i+jvsPUK5RkYfVZy7NwNMvPtap30T3jIJItepoZt/54F9ngJEMCMOKPVfwJPhinTQbISWtFhkouad9cepGffMNA3vZMlstg/w40QvzesbKnQHj6084/AQCDkmvrp3uh2a1JckqD6ZS6NUQ6QBVqmkUWp/vPcfaSw+JCC+x5ZRdoLEpQ9gtnFURL7SqvBk11nZw2zypGe0aNtegQqm9PdZLi+oL2pD7CpFoXuD7lHydfnNxbEcLFeNZ0kq57VdBRvX5U1Ccn/Eg6dI9jE6Ubbg68r8JMEjDSDkgsAYLcVNrFqb9aPr7Hj03RVSWa34maZU1VYHz/73Dj7uMnTwxdV3n68STNkRMnOpc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c38d1fe0-4494-49ee-7e30-08dd2f869c38
X-MS-Exchange-CrossTenant-AuthSource: CY8PR10MB7243.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 01:48:55.2035
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: INotRxVzNI32XO307oGGALqiDfxgEaD8aoK6djEKbARD+dq2mt4v4Ry6HNigS+XCDR4rUhLin1DlKvIigMji66dqU1Npmt38OhDvQdxFwak=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB7097
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-07_06,2025-01-06_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 suspectscore=0
 adultscore=0 mlxlogscore=999 phishscore=0 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501080011
X-Proofpoint-GUID: RTTQyohOU7r1ErT_LLVp5TLUH1DGL7qi
X-Proofpoint-ORIG-GUID: RTTQyohOU7r1ErT_LLVp5TLUH1DGL7qi
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b="cbGc/YAM";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=ognAHOr1;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
X-Original-From: michael.christie@oracle.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 1/6/25 8:24 PM, Xiang Zhang wrote:
> The ISCSI_UEVENT_GET_HOST_STATS request is already replied to
> iscsid in iscsi_get_host_stats. This fix ensures
> that redundant responses are skipped in iscsi_if_rx.
> - On success: send reply and stats from iscsi_get_host_stats()
>   within if_recv_msg().
> - On error: fall through.
> 
> Signed-off-by: Xiang Zhang <hawkxiang.cpp@gmail.com>

Thanks for fixing this.

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/350549f3-3647-4cbb-b62e-8881a78dbb97%40oracle.com.
