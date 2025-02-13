Return-Path: <open-iscsi+bncBDVIJONZ3YDRB66DWW6QMGQENMIXK6A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A08A335F3
	for <lists+open-iscsi@lfdr.de>; Thu, 13 Feb 2025 04:07:43 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id d75a77b69052e-471ab7a28ffsf7577511cf.0
        for <lists+open-iscsi@lfdr.de>; Wed, 12 Feb 2025 19:07:43 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1739416062; cv=pass;
        d=google.com; s=arc-20240605;
        b=ItklhitykaWoWdbAbgvyxYIYk4wSqwV0HUJKNXzScpepjfy5LFUBQKT/rn49NKYeO8
         HoXWpnSjET6GZd6PN+ldqVowH5jdsCpDk4W0Qki1pXABOr15Yo5/lfMPRbtM2DIvtcsz
         ZXxxEN/X9Q09tzJL3lRYoWTlhggk0weUrdQa1Mxi2+VoggaICiwbJhBR5uHTpot0UVYU
         ft3MPgNHo+WYuyyrRUwacESualoPcaH4BIQuRwNdHNxaqHub0o2ukWmxWMhIg+hyTrWT
         zhr0xMAV4ES7ntzKGvOc0slCbbBvuzhJK10xQ+O1RXcH6Ai+XCeHNrrHmx3DOETnPBoy
         MH7g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:date:references
         :message-id:organization:in-reply-to:from:subject:cc:to
         :dkim-signature;
        bh=GGqP/Q7LA8H2GlFISSEw0aQX0dE7CwSp1ANDkF7fEXE=;
        fh=p6fZQTV/vL6n+lQDJGw0/e9BHGXfJ1UEBXwfaTJZ1AM=;
        b=BiCIeOs9Vme/ONaww1uiltrbOTp2GvaZDUpDjy6lV3SOmAphLSZ5WN/+7+5pnMxvuq
         6wni/EcmnN+TSyRVwp33xz0v4VRsXNPBCar0FPbUmBY0DzLy3dxTht3kbjtwdamuTSXR
         GV7/6Un96yVktrB7RXloRunxwr8B86LnhJCWSYtq9qCDHtbcDICuma/lKkTUVeQ4G4u4
         ae8/TBBECrJD1Ye7VzncupwV/KFj/mRN5PyrZiuaYMgJZepzoLhcxb+X5a6Wwyd3lwFk
         Z/NZalT8IOgGlWt0xWXQLHE6tfHYIakEUKiUyHr+xDBwBIsVhCo4yvts1gAtJrqkeUWs
         ZDnQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=jUkFz8Iy;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=tBWAAWsI;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1739416062; x=1740020862; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:date:references:message-id
         :organization:in-reply-to:from:subject:cc:to:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GGqP/Q7LA8H2GlFISSEw0aQX0dE7CwSp1ANDkF7fEXE=;
        b=L8OP9SEKgZ9zCX5T/8NdadmrbEVEYiSTHhYBneoerids9P36oVKwn8+dyOeMVAarZ5
         t7Ukr6Uuhe7Teb8jwsvN28faTHAeQntOGS2Ux5CCicZMBJ35iOc/UOKXP3xUkGM+jPxq
         B9iyqokUeua0yt0H51VnerxnPEEWy+zxFvPKLbS2sd+scWMtl9DtO/RWF6vPaodOkp55
         L1xJlUm8JkzD9h2cSF7qmq0HA6KJfSkyGHxc6adJs6HTsYOEr9KgHZq7PWXQdUtmNsa8
         7HM+cURhwSCSebZNAmwGFyugiJokAXw9SkVsBa/86mH0dbaLb133pm4ofDX2bHcHGQ8V
         yX8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739416062; x=1740020862;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :date:references:message-id:organization:in-reply-to:from:subject:cc
         :to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GGqP/Q7LA8H2GlFISSEw0aQX0dE7CwSp1ANDkF7fEXE=;
        b=bk11jVEMM0bxBureqp+wloi6Ph0bdkeU0SswbaHWCaqzUikVkZkHYIKPoNsIuR5S78
         dA/dY4rJ/XMcVKG5lu7RH6Xj15ASKvH0wfeuadP3VPLF97UVHo8V1d93IFukG2CGXHQw
         MNyltrYeBcjzEq367Q+e61IRAx8QSKQbwO24i57ULdWrQBi5JHaTeMJ47heK+xphpweC
         ct87c+X9k38Dgsivf8RJ3pdSDVTvBzxMGCROsGIdKMMmKr6rx1dGFonGacE4loVXls7n
         YrOGpTOG0Ee/ncbOOb1j/VgWlhekGdyFfEnWKsHzQxt2yD420t8bHOT4O3Kp1Yayo2gl
         GpZw==
X-Forwarded-Encrypted: i=3; AJvYcCXczzjQDkLBTm6tnYH7xvZvYI7e+IB+zML64RTzWtgN2s1Ceyk/ExusE7dgKgjv5S4w5SB4pw==@lfdr.de
X-Gm-Message-State: AOJu0YyKqI1unrIEytmEMzcfR4g5y4ossssm1YntSPT+CycXBvqjBG+K
	H4NnpomuM/kiokikgPHzXE/yLIQX0VH2OnOGHlNXiD2e5uLlvA00
X-Google-Smtp-Source: AGHT+IFyMUbVd8IN6KaOsxnU75t9HLJcI7xenb5zDr9q5isYgIWpsMs+ufp5gwuCTUPweUQ8vIQTwA==
X-Received: by 2002:a05:622a:1356:b0:471:89dc:2cf with SMTP id d75a77b69052e-471b06086e1mr86688721cf.1.1739416062388;
        Wed, 12 Feb 2025 19:07:42 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com; h=Adn5yVEEoPRw5SYuJyiJXH1Oqdq6Oo8lAQ4x/SaFYrpn0qP+Aw==
Received: by 2002:ac8:4904:0:b0:467:68a3:4c53 with SMTP id d75a77b69052e-471bf3043b3ls6979431cf.1.-pod-prod-01-us;
 Wed, 12 Feb 2025 19:07:38 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCVksFe3WP4j7GlDeTWqVDbV3Jyt/hgywOYQm6P2oolkTxaa3EhY9B/xWHJkHjpW3QWHJ0FHg2xHjlBN@googlegroups.com
X-Received: by 2002:a05:620a:450a:b0:7be:8304:f241 with SMTP id af79cd13be357-7c0707986camr847568085a.50.1739416058684;
        Wed, 12 Feb 2025 19:07:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1739416058; cv=pass;
        d=google.com; s=arc-20240605;
        b=W0H8m3pc6zgIE1bixzkzFdzmpthPtLbBN6c4fw8E3TO5CENh4s22A+mAZ8TvKlNOdT
         rChkeOQiJ6O1TulJTFXeRacUobZ40qOiLk+pUgEcjrxOzeDPN2d8mRvkNzDzUNY0Bcbs
         kImsJxgWWWvIoHsc8Qc2ZWL8II8eTg1opxf/rsMODevGm+W/AqJmZBBPfJ/44k5a8CV3
         JBrAthoZAwrmBKvvHeDTI1ohVRXSxKRyMNkJEQh3go+C0bFQhSyHRCVLjr//oi8U0mXZ
         unbriG7gDjzM4oJxpDPK9pISQO49TAZy/7UNK066+lrX2HqgE51LWNMgfHatRMhcOy7d
         trmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:date:references:message-id:organization:in-reply-to
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=gliwN3wcqNAjGAGLcF9skkxF0ZlDk80PD82esdNVM5U=;
        fh=G9YDwZkXR5gLtdzgllMhNBbsXhXA/J7+DxMer3z8IAE=;
        b=QqQys/05Vou7H9W6MzFSP0FzqwGhevO1/hrO3JQ+l3/gRaFgya+PosQ1vnNMVQGr2y
         zVieMwFA2U59Xerjve14mtvBdjr56nNPPTH7ccakgctWaiImG4CL5Kt9teXedpY6Z+Fl
         1oWveUz9VHb0WsCPhy4dj9UhtwE25/fMZKdaEVPoWJaUUjpL8tB2fyqbkcaHd93C1HrL
         NIHwtX84IR4FUPuRGXSFxDSokEULaud7fpNl2iw3UOOJOE/PKNryGWgBI9HLxtd86fwr
         /ZIjRWvWKukxZkGSPG1D/LS2rXcACpiODtx4ty7Xw91bK0p/DtPTw/IxPgfKir9xu5qv
         NWcQ==;
        dara=google.com
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=jUkFz8Iy;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=tBWAAWsI;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id d75a77b69052e-471c2af8af9si181541cf.4.2025.02.12.19.07.38
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Feb 2025 19:07:38 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51D1qBlS013411;
	Thu, 13 Feb 2025 03:07:37 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 44p0s40rkq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 13 Feb 2025 03:07:37 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 51D1i1fT030523;
	Thu, 13 Feb 2025 03:07:36 GMT
Received: from nam04-mw2-obe.outbound.protection.outlook.com (mail-mw2nam04lp2173.outbound.protection.outlook.com [104.47.73.173])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 44p631jm8r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 13 Feb 2025 03:07:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BVekPcCXgMb4qkuoJc1ZyVdWZ3YlNhQ62hfT4Jqs/ZW/IXpBx1e/56kyChHF3797xiSYVgVy3xRHh4UkQXAAFl1JPuWGz67fA8xQIt9vOy/uf5mB45bhf6K1fL/mNqS9Rq0R8GQTJePvmMe7Mtt8ldp5lCo/d6QX14X0HOet7hU49ry5yWVcDC4jALTgp3XlhZR0oPw9s5WMGPDNXkVxVk8LQWbUyrDItb75xHVffe7jjMIA7/Igqzcs8+dj8NPDPIS/g3GHcb4UONI79UayhCPDluhioqyUfR0dDyOWzHDdL08XxMt8gvbyc0uBRTLDO5q7kgpztVNZABcofyQLIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gliwN3wcqNAjGAGLcF9skkxF0ZlDk80PD82esdNVM5U=;
 b=UqB28u3Xcd5ar+2qWyk1mcIT/kEIdciPRNlqiAzdRtD+wcjXsS21BdUxgZsvQLJmrDCeGLejQZ3YUJKn5s7y4vpo43mZ26yNJwa45pOpsc1MRAQalYjyMl74EZy37kc0vArmyZ7xSZnWlfHQo35h5hQWoKQwwKjvGcxiNEdkSpNnyc9I5axSK7lW0PklAeWRgqu03+uJnfXH6I1FIQO4mra8leqhiH1kMHWorDScOypAvP4gWb8mHjivuBWAOqmrPwscyVLUK+PfFIOlitkvwHx+KSu6usRjSHSoqCgXLSf6EVY/XuR9mc1TTVXpjkIlw3wzFFKNHLT1WYlt43tmlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CH0PR10MB5338.namprd10.prod.outlook.com (2603:10b6:610:cb::8)
 by CH0PR10MB4940.namprd10.prod.outlook.com (2603:10b6:610:c7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.15; Thu, 13 Feb
 2025 03:07:34 +0000
Received: from CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf]) by CH0PR10MB5338.namprd10.prod.outlook.com
 ([fe80::5cca:2bcc:cedb:d9bf%4]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 03:07:34 +0000
To: Eric Biggers <ebiggers@kernel.org>
Cc: "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        Lee Duncan
 <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        Mike Christie
 <michael.christie@oracle.com>,
        linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com
Subject: Re: [PATCH] scsi: iscsi_tcp: switch to using the crc32c library
From: "'Martin K. Petersen' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <20250207041724.70733-1-ebiggers@kernel.org> (Eric Biggers's
	message of "Thu, 6 Feb 2025 20:17:24 -0800")
Organization: Oracle Corporation
Message-ID: <yq1pljmv8yg.fsf@ca-mkp.ca.oracle.com>
References: <20250207041724.70733-1-ebiggers@kernel.org>
Date: Wed, 12 Feb 2025 22:07:30 -0500
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: LO4P265CA0287.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:38f::15) To CH0PR10MB5338.namprd10.prod.outlook.com
 (2603:10b6:610:cb::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR10MB5338:EE_|CH0PR10MB4940:EE_
X-MS-Office365-Filtering-Correlation-Id: ca2e23f5-167a-411e-871b-08dd4bdb8fde
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/8o6bCIn+eFo0sQXndAGdFYey8jkIsIyqtvVZM+7GR5S7cCKogWgSqjY+rfU?=
 =?us-ascii?Q?qd2PF+EVsCUZZbRw2QSV2gaCHTC4Nk0i/0sC+Mnip4Wx9BpO/KY1TfhlPaEV?=
 =?us-ascii?Q?6CwmdapVmrT445acthvLW9NcV1jCkNB75Z6D8/OGA7Agq9RRug4DLsT0urFo?=
 =?us-ascii?Q?hwDsdtQRPn6N/W0NvaucROAScpGpX15ywSO47+WNvcyBYlreFox9asb/RreV?=
 =?us-ascii?Q?O9HXWR88fudcmbxzi8kpjYjwejPsBoBYuJFsvrxRliap573VmFMPOdtQKkPK?=
 =?us-ascii?Q?XtJcmLDhCDJRuuFjT/d9/eVtTBF+f+abMTVOcULLlOzO3kKhLDdAfxshiS4/?=
 =?us-ascii?Q?9fgMaux7g4kx1shQ6BFrmFGWlcFMrVIxWPB79mareDvcLLnKwunTjGC/HqWQ?=
 =?us-ascii?Q?QGk28UcD/5sVqts2sCa59G5LkcfDTK1P9bDyHezY1enEwKE8h+euCPb8NbBp?=
 =?us-ascii?Q?gb1607WNd1E8tG/c1BbQ+SBr42TshkDXts+x3U1ApZ+Y62M6X4uqoQZ3pPvx?=
 =?us-ascii?Q?y+rFWakvB6Vekp9YQXGJCx2LuPqoWWAXN9qonDru2j10cx1kVyHY1iuXwhZI?=
 =?us-ascii?Q?2BT79s1IuYru5BnCKm5UzFCiPyT/ZPGaST/djkJbhTMH2jiMIGUvHdG0Nh1n?=
 =?us-ascii?Q?bQhX3pCX4JzEyoRh/sU+PmnhJIYhzoiDYvLoSQNz7fxITUpqUYzs+/i3vgFZ?=
 =?us-ascii?Q?xL3A28sSbGjNCu15MgCHCMaE37vDLNuJ7dMTfTG+6A4yjU7rFB35SfDXXaPL?=
 =?us-ascii?Q?bzOdz1tJnC6BlWaKzZ8y4F/kgHIqpk8FjHuMWTkCDShjHtSIYgXIfMXVeQZk?=
 =?us-ascii?Q?8kHgbc1ViARvP5CoGrpBe0qUtb4PNToOu+GNlgmrtVU1/43vf3BwA5UZhtA5?=
 =?us-ascii?Q?65b0KwfBFpA3XgAoPRoVPU7U7rl7kwsJ6xhdnj+ObKsetVm40kUXip825jsu?=
 =?us-ascii?Q?1aw9iMm/Wmpbgsyu+Q15/Qbc6/uAAqkfR+Wfl4S031bhGcc5obHzTuMMr0cX?=
 =?us-ascii?Q?QO0fPQzbMjlnc6vV9arA23KHwkYg/0cP5CmQZLq4XKVIy4oo0q0pgq60Rp37?=
 =?us-ascii?Q?4u1a3YJ/CD1RYY0SSIZJlm+7CrhJo69sMnEPeVNYaGxXXpUpSFko3exninql?=
 =?us-ascii?Q?uDCH0HxcXh0SLqH11Mmp+3vbmbRwG999TTBo/2B3nesOZ1+tOgD135cZPFmL?=
 =?us-ascii?Q?qUIDe4Asvg/FLZ1TsYjs4QispuZ6ArJed0VVwba8DAl2ihYQkctbW+bfkhYw?=
 =?us-ascii?Q?asNloJ2/o9A7xGT5kW/vpt2mKvtgj0GWBY+yxZJ5+iKg3M1xL7u3P5v/7mXJ?=
 =?us-ascii?Q?t9vbRjDcaWIx2PjjXk6ScYJU3jH1aXmlib+XT5xXJjDm3O6BJddoQtksgqu1?=
 =?us-ascii?Q?FYHQWwL6wIyF2hhKa9rr73+hdirn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5338.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qsFBRW98Y/34kV4S5g//HdJPWjGTer/Gx9Xu/MiJUKwRk9dV+ho5XM13nz2m?=
 =?us-ascii?Q?v3+t0m7/nlzoWhAzDklFOBoruL4atGRcedhZCgU8RzUgZDlBUlXjINte5f7N?=
 =?us-ascii?Q?JXQ8EOOAENT+SE3FYIfq+cI00mwxyO2wlOAAXUd5Ae7Amnsz623HhksyC3LA?=
 =?us-ascii?Q?Q15ycU1n+qlwSd8ISTD6UCr4hw8B1Qn1J+BzRMQbhKX7FEZAl5EuMtQ9pt5N?=
 =?us-ascii?Q?7OyeNkt3YLHjFs0xxeQcr79PdcBLobfrsFnwqA7kiM0bJTVGqgVa1ca9wnMz?=
 =?us-ascii?Q?zhc+f6UYFwdL089DJP79GnUUyd/dlZWq6XByyKsHQPvu/eVTfAIh4CdoYjWJ?=
 =?us-ascii?Q?KqNKN2N0sTr0Ut8mJvo1kWJ/YSCBrdNWKw3LR3BioK6dzvCJlR/v58tCvu9+?=
 =?us-ascii?Q?BV6XQKi4QTiDgPPU8GTIKW5USKg6pwy9XbJEA/23s3gIPOhd7rr2f+KoBOae?=
 =?us-ascii?Q?T7oZMuEVQYiwDd0b36bEUCNENc34W/EyVO+sOzQT7m7BtuolBaIRZWU2Z4cR?=
 =?us-ascii?Q?e5ecFDspHtliFthh6A5qsiuB/qOztEIju0IvWILOn4RDoqiEHqSgtAU/FDk6?=
 =?us-ascii?Q?RVoU5Snu2OZb4hnd8dR/YWwSQOF1b8TRpPJWsQGVoMB05gFkxw4NpL6TG/Av?=
 =?us-ascii?Q?0FV2WVpJn7/bt2LeBdXQAXDkyhlCXi23BaYXY6FMwPKL/Ug5stdGcPW8yErb?=
 =?us-ascii?Q?/DB2LBYvtewa2ssqJMvyIHl04/VCdSHDpdX9ICa1PDp17W//iT/ySJfY4uEM?=
 =?us-ascii?Q?DWDvoLjXxtoTwARD21hjP3Cj5qRBqFUYYPvXeih8BjXgOsQvnx/BVo9YIvQY?=
 =?us-ascii?Q?LGR9ULawco/XGyKjIaftH3RJznpKbCQp0Xxf0eqAzu++L5/PMNcy56N/KSIE?=
 =?us-ascii?Q?nugL7vg8kSF5fD1PMfdlfb/oycu3SrZuC02hrdezHRiJPvfeGO9IVoKDWLPc?=
 =?us-ascii?Q?HZhJ4h6O6SUMw3UZmRAb06SJZ4MoyW3uRc61wdKqBUHzzNkaB+tmFgPAlc2P?=
 =?us-ascii?Q?Ct4zN5WN4jzWw7aBGenJ2700QcZmduiNCK6hZPWvhI8w9EJoJ7XrTZCKZGnV?=
 =?us-ascii?Q?WMym1mT8WqEhX3zc/5jRDhShRfZ6Ne2kgi+zS8skCjWMiCtPZkgk3hAVLdD6?=
 =?us-ascii?Q?Rve6qsb7Upe8KVTCTAyQuqEXqu1n4WeXRH7wauSdxVsAJRt4dUEkwP3jOjdX?=
 =?us-ascii?Q?eP1KLXuBHS8K7GvHM3g7zz8fyMX6uKZlB66W41gqKFbfXLUnslcdlgVredx3?=
 =?us-ascii?Q?Ob4mxXl9EPHeeZ4miu+tdBjIMhhbTH/rbW8jJrFBMgs8zF0e+S9Jb+kk8J0K?=
 =?us-ascii?Q?/5LbaCvVuoVT2u2avbdYP2s+Es3WH4c6yAro4c6Vric5Nbw71/rfduKftdmq?=
 =?us-ascii?Q?tUzGKUcGGdhMzxHgWLXDIgCMpeH5bEaguY35LRrsmGAbswNGuoEBWRE28R4z?=
 =?us-ascii?Q?phv6GMh7MgBvWShjcqAlWgVSor+fKB4A5x9pi8FEVpuDYqK+YDSp8dI4LIbb?=
 =?us-ascii?Q?uZutbvyzL7FLjqUicD1y0pQCZ/RasLPviizTsB+YsiCG2GFkz4iI+gyWb0FC?=
 =?us-ascii?Q?FLlULRdNRDL6xdajoEaMAuoGm2E+E31Dckw7SSrnUdPcFqw764cXFu81SoPu?=
 =?us-ascii?Q?4w=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: MOpE8Z/KXDeww9+dGjWPlTRpwXc3EHJ8x/yeCIvRBtleZ8dZzpB38JJ+0TsLEL+EllxTazb8ilYloXbWJGg/KG6A9ArB6yODap+eIxbd5Xqg9Z89yUhZBXtHXAk9dPKBQneZf8C6luTLzYsrisercjJ8yhC+5bJAEESRz5maWCWLUEZGd6lPHvrvNnxlsYim27MVZp2egFCkl7QeTUz5SZ83+eBAXG9U7JAsO2k9qBEEHMp5wnrPfzavXwhX/q7/ztogEcKVOjHqHuj+kLyPgAM4cMLj8mxmaUbTrpUdUd3Tc/KNe1AM3kBeAIVkGU2JrOvlOqdHNx3jMJrHtFi6okke5VU5G+HD5A6UiXBJXPcbouI7LkjELFurBLHVbuCV5jvXLzFoPmg4yISlRJc59d0tyZslXQBgQT63SOxbnvWKLRIuCH0wR1aJgrJmedp9sTGQl+/0Mcu6E+kxcUxIaf6r97Zt1cgiANkCozR18AliOL5L/XfkJEapnn/Xj130IovTuZWnoT7HDYll4MVbRG9dpDTF/uNRurAiLO3UtvT5nlsPeB+fldPgv6A7+YMOPCifUYn4IWEsP7jEhuh89Fyjq8KiyEFkjr5q4x3fs7A=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca2e23f5-167a-411e-871b-08dd4bdb8fde
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5338.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2025 03:07:34.1189
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PqM4X78dFeX39kA6RVCDLVZ9lGYxR6B7o6vGQdXJwbmmKyFdKFyDbHhbW++dphVn3IJiLHbaRhno0Y7TWIrU0U1/e/lOlRC3QimVI8b9jPk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB4940
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-12_08,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=757 bulkscore=0
 phishscore=0 spamscore=0 adultscore=0 suspectscore=0 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2501170000 definitions=main-2502130022
X-Proofpoint-GUID: gnqvdKN6-hQH6LZ9GuqcPv1PAYkTavoB
X-Proofpoint-ORIG-GUID: gnqvdKN6-hQH6LZ9GuqcPv1PAYkTavoB
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=jUkFz8Iy;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=tBWAAWsI;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
X-Original-From: "Martin K. Petersen" <martin.petersen@oracle.com>
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


Eric,

> Now that the crc32c() library function directly takes advantage of
> architecture-specific optimizations, it is unnecessary to go through
> the crypto API. Just use crc32c(). This is much simpler, and it
> improves performance due to eliminating the crypto API overhead.

Applied to 6.15/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/yq1pljmv8yg.fsf%40ca-mkp.ca.oracle.com.
