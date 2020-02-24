Return-Path: <open-iscsi+bncBDB2NUWQZQDRBO4G3PZAKGQENFAK34Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FA2170898
	for <lists+open-iscsi@lfdr.de>; Wed, 26 Feb 2020 20:13:01 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id a74sf142867oib.2
        for <lists+open-iscsi@lfdr.de>; Wed, 26 Feb 2020 11:13:01 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1582744380; cv=pass;
        d=google.com; s=arc-20160816;
        b=FpOS44NaI1kuz3Ike5aQMN7EXajvcCJDC5k/OAsCyVh6spk5wj10IC6R7ZSf4A7En3
         t9BpOV8eaMFLdzbH41uAaA3k+luqcC9x/A0l8k27naqEaRWZPTJONYe8M51kpZOU/KQG
         lBrOyalhx/0KjS6zczviVZUK7GFHewOee0lFNpZ3QvKIIyv8x0L6KRVPOuxJG34cIhEw
         D8p1jd7eLv4MWLQ+cElPNF2RYaopbwA7f7uCdlmYj3AJ8FiTnB4VKMSbSMbjQC3FIkvP
         M9aNRJKHQz2MGSyONY0+e5YNe9OOJphhOqwiSt6YduU3NAw4yfDgxyqssJUiz5NdWskF
         21IQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:ironport-phdr
         :dkim-signature;
        bh=lyiyIWON8XfClP72faT0lnQEKt5DRyHROQNoOo7YfVI=;
        b=dIqTtfp74xQKXIpjmGzYiKomxMiMT4Eh83fgxOaFvjDoC1LZnNSWJIwUbPM2Qbb9K5
         RcfsGpXpTTGHmIrFab8mMMkD1IFhYIL6u8O+unzXObdjWMvoeZlzIIx3a6bPTgnjCEod
         7gKRiQZdZvyEC+V+jJwA+fYYTQOlpzv60XYQS2LLA97rjn6+/t+ayaFVPHOTZ9PHaQ/g
         klzj4YjWSnbAJAyXDqx8Z+hQT1LsSJrq1HKnCPn/OFnQQmCaLDllCTDderqBPDfqpTXa
         8gwKuT9rVdLz48EjnFTiEdMMZ+dHr1oaSgMHRi0X1OmIbXUu4MQ8zt+sY4NQhllt2TH8
         VdBA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@cisco.com header.s=iport header.b=eWR0sqX3;
       dkim=pass header.i=@cisco.onmicrosoft.com header.s=selector2-cisco-onmicrosoft-com header.b=wZQwHeLE;
       arc=pass (i=1 spf=pass spfdomain=cisco.com dkim=pass dkdomain=cisco.com dmarc=pass fromdomain=cisco.com);
       spf=pass (google.com: domain of satishkh@cisco.com designates 173.37.142.92 as permitted sender) smtp.mailfrom=satishkh@cisco.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=cisco.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-phdr:from:to:cc:subject:thread-topic:thread-index:date
         :message-id:references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lyiyIWON8XfClP72faT0lnQEKt5DRyHROQNoOo7YfVI=;
        b=rJ8FTRbZV3AtWskFHXDLs1ZcOI+xUYO/x3spazw1Ckacw7e061mWdrvmaMX2ZtlFZU
         vdyPDJ7oz56DBVaCiVqWjI9A2RM/Wk+uHULUEwZmRk0sCPdhTdtaDiIHJYquMCP6wbli
         N736GxZ2MWbLsdoNIZVVzRUKkubTULWPKLDxEhSh8stWgMlAm+7Z7BC9Mo5X/fLrmdFH
         A5yRSnzOPAkkd03ocmO5bNp1xZSojb2k7hnXHKh2i1SFlyxWCQwzghhbdjp11t1kMnjt
         4MshtV8v1hKnJEdytnBRPxCWU9MyN8OYKQNCP8ACCKFE4UJeDnheV7ezfeRU1Jutepaq
         mO3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-phdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=lyiyIWON8XfClP72faT0lnQEKt5DRyHROQNoOo7YfVI=;
        b=KW7cC8pCJOdxceQlBc5SUztyB6yf94FFVDN0usfSw2f167eTHIdDRApG4rLPQuRmc6
         o805RbesBnEMNPvefoNkp42SMIMI8nm3Vv52XzlIbhO61q2iwZpBWmVkvDwHbdFI+o6y
         ziK1qTXbrCROqMRYSf+XywhPiICpfSIdfcGIrs9q7dFghUMLKhw7fbRHHg8ry3QWVux6
         /nIoEZ5f4IkBd0/8EfQ61X/evBqq2fIJJ/Vj9BpC4J54NgbZuMCsFHF5NW8X7mabDiL8
         xdn1mmS0KIBC90gWANuQgzMl2+1+iqO+ofdA+D5QYUL1GUc2mUnCHEPpZauR3wMbgXbW
         bpsg==
X-Gm-Message-State: APjAAAXnSL0cgVWXM+XZM8q1LgfQ81UHHGAiOeBRAk0+iwVyYH10xWDt
	pG67zABCreVidDp0zTO1N0g=
X-Google-Smtp-Source: APXvYqzYyuo8uepbGGEDgA3LMKZRsM8IbglBR7T259fNarWcrUUepYsPD4V+SYEUx2DBT50OyiWIeQ==
X-Received: by 2002:a05:6830:1098:: with SMTP id y24mr213930oto.197.1582744379199;
        Wed, 26 Feb 2020 11:12:59 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:7999:: with SMTP id h25ls130587otm.2.gmail; Wed, 26 Feb
 2020 11:12:59 -0800 (PST)
X-Received: by 2002:a05:6830:114f:: with SMTP id x15mr191411otq.291.1582744379013;
        Wed, 26 Feb 2020 11:12:59 -0800 (PST)
Received: by 2002:a05:6808:910:0:0:0:0 with SMTP id w16msoih;
        Mon, 24 Feb 2020 14:12:07 -0800 (PST)
X-Received: by 2002:a92:af4b:: with SMTP id n72mr63348951ili.288.1582582326859;
        Mon, 24 Feb 2020 14:12:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582582326; cv=pass;
        d=google.com; s=arc-20160816;
        b=hf/xR3ChFYJspsj132UuB3bd0b7rmgxpO7q+B18TJXsaaGdaZxt7PjHhBq2XyaG6/b
         njGC0nY6gxoJCyUyChDlu+HoeuD/9NzoItCuEm/TkbgzLo929yP2/KDJV0MTtBpmqWgV
         PYmzPVwLTM97bUtV/7UEyvfGsjwFZEx53aeTx6xvTFs6dvwdhCepIz4oR3f6mOHJJ8Jc
         +DAhv+wixhSJpKLhUzrWeFjAOlcxT+V/o3HHgcolhFDSzMJ8cj+THRbi3FboOA4cveXl
         JfBCgZUbDnLr11Vx8Te0cs14Vf2M1Vz/bFmuaR68nxDcPeAn8v+P5AnE4nO76Qg34JpE
         jBvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:dkim-signature:ironport-phdr:dkim-signature;
        bh=dbmiQYsTp881U2uXHbwASO16eP2jQyye/4zNQsF4SJI=;
        b=uXaBLn2+nDQMWrb8K66iPDHgTHEp6vcw3ISPd8rOslkibjJXevIz7aAV0ObULOKOqU
         hpPU7bOF/l3sNGtoHxGWPBRhgse6H/LiaDpt6PYwVSYA4MWhtxWR3nqkYe6KX+qPaRBW
         /xT+47VDGRdJDmszbjZIM+YNnJwOgUosfwmree6D7mpDqOdBP2//QYT+SUM77zDonQMv
         ksPqaBQVy/BKE1GpBnQxzfYHGtVD6MW4zf2Py2iaXnnmeXiiI29YyAAzoj658kS6MEpj
         a9oF+1rpYU19bW8mMtQqpm7vnEHLgROFtdXg5oIHLwKYy3g1KX0/XOex1K4+PXPppYLt
         ZJPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cisco.com header.s=iport header.b=eWR0sqX3;
       dkim=pass header.i=@cisco.onmicrosoft.com header.s=selector2-cisco-onmicrosoft-com header.b=wZQwHeLE;
       arc=pass (i=1 spf=pass spfdomain=cisco.com dkim=pass dkdomain=cisco.com dmarc=pass fromdomain=cisco.com);
       spf=pass (google.com: domain of satishkh@cisco.com designates 173.37.142.92 as permitted sender) smtp.mailfrom=satishkh@cisco.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=cisco.com
Received: from alln-iport-5.cisco.com (alln-iport-5.cisco.com. [173.37.142.92])
        by gmr-mx.google.com with ESMTPS id u22si766263ioc.3.2020.02.24.14.12.06
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Feb 2020 14:12:06 -0800 (PST)
Received-SPF: pass (google.com: domain of satishkh@cisco.com designates 173.37.142.92 as permitted sender) client-ip=173.37.142.92;
IronPort-PHdr: =?us-ascii?q?9a23=3Ai7oNnhXgacHj/ry37x1AifWiyofV8LGuZFwc94?=
 =?us-ascii?q?YnhrRSc6+q45XlOgnF6O5wiEPSA9yJ8OpK3uzRta2oGXcN55qMqjgjSNRNTF?=
 =?us-ascii?q?dE7KdehAk8GIiAAEz/IuTtankhFdhDT19m/1mwMFNeH4D1YFiB6nA=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0BuAABwSVRe/5JdJa1mGgEBAQEBAQE?=
 =?us-ascii?q?BAQMBAQEBEQEBAQICAQEBAYFqAgEBAQELAYEkAS5QBWxYIAQLKodaA4pxToI?=
 =?us-ascii?q?RmBSCUgNUCQEBAQwBASMKAgQBAYRAAoINJDcGDgIDDQEBBQEBAQIBBQRthTc?=
 =?us-ascii?q?MhWMBAQEBAxIuAQE3AQ8CAQgRBAEBASAOMgMaCAIEAQ0FCBqDBYF9TQMuAQ6?=
 =?us-ascii?q?iWgKBOYhigieCfwEBBYUFGIIMAwYUgSQBjCMagUE/gRFHgkw+gmQCAYFOGCu?=
 =?us-ascii?q?DFoIsjX8jggiGK5lFCoI8h1GKAIUwgnqYNI5wiHySSwIEAgQFAg4BAQWBaCO?=
 =?us-ascii?q?BWHAVgydQGA2OHQwXg1CFFIUIATh0AoEni0eCQgEB?=
X-IronPort-AV: E=Sophos;i="5.70,481,1574121600"; 
   d="scan'208,217";a="444001379"
Received: from rcdn-core-10.cisco.com ([173.37.93.146])
  by alln-iport-5.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA; 24 Feb 2020 22:12:04 +0000
Received: from XCH-ALN-004.cisco.com (xch-aln-004.cisco.com [173.36.7.14])
	by rcdn-core-10.cisco.com (8.15.2/8.15.2) with ESMTPS id 01OMC3wP028761
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL)
	for <open-iscsi@googlegroups.com>; Mon, 24 Feb 2020 22:12:04 GMT
Received: from xhs-aln-001.cisco.com (173.37.135.118) by XCH-ALN-004.cisco.com
 (173.36.7.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 24 Feb
 2020 16:12:03 -0600
Received: from xhs-aln-002.cisco.com (173.37.135.119) by xhs-aln-001.cisco.com
 (173.37.135.118) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 24 Feb
 2020 16:12:02 -0600
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (173.37.151.57)
 by xhs-aln-002.cisco.com (173.37.135.119) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Mon, 24 Feb 2020 16:12:02 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cuhPaawhkOCi0A/QYI0lvq9Nok9h0PXLi1HkhLExGsVh1op8Yj8fA/3xfio4nB3y1k7tojIo/l3IgPAtnEYMY/9XTWWKRBPTMEZ+YXVoKKO+AwvmY50qjpDXIeyHPeXR5+v0uXuO0R87xI5zERfzBScYeZq7QNIF3J/a5pkmqjeMMZjSPpT1UgH3I/vNkxh+v0l0TzdkEDcWWIcFiexWW/wVJBLdE/Sxxglickt5mnFv9LwcUnvmOeqUSRcqVX/Nb4cA/t9rLAJq3mugtGg95nBc/w8PqnPcaX9epqXZVdm0HBiH2ELuvMX/G4POFaB9emQBVsO/RTp2Z2O1wNhq0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dbmiQYsTp881U2uXHbwASO16eP2jQyye/4zNQsF4SJI=;
 b=lpSLyA/3WNPM6hMzwNGQCOoOABl+VFXkkFqsWYdi3OmysQgo1PWvaih6neFd5SScqikJwaxn1mIeEA3c8aoAy4uLIyRXfQs0hMnh4Cj8mn28sydE2cppRnfDwspDoSVaDS4SyvIIwM/AoiwPo0amKNmu4oFJO/yscMWeFfGcnfRZ8eOSArazHplQoJWriyj8aLR+Kr86Z2ZWXXx0OFqxxF/xcqBjvadkNeHdk0BlTEg402yS3r20pC/Pe+X7miA3At+OxEHUGSuzhfVwNvzLb+QIoqqofXXgikyhmbstxHmu4dww9yyuIJUC+EjBUrDev3VLQ3lOBl3qz69LP8PcSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
Received: from SN6PR11MB3008.namprd11.prod.outlook.com (2603:10b6:805:cf::18)
 by SN6PR11MB3262.namprd11.prod.outlook.com (2603:10b6:805:bf::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Mon, 24 Feb
 2020 22:12:01 +0000
Received: from SN6PR11MB3008.namprd11.prod.outlook.com
 ([fe80::c5c8:b1da:3790:ca36]) by SN6PR11MB3008.namprd11.prod.outlook.com
 ([fe80::c5c8:b1da:3790:ca36%7]) with mapi id 15.20.2729.033; Mon, 24 Feb 2020
 22:12:01 +0000
From: "'Satish Kharat (satishkh)' via open-iscsi" <open-iscsi@googlegroups.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
        Lee Duncan
	<lduncan@suse.com>,
        "Sesidhar Baddela (sebaddel)" <sebaddel@cisco.com>,
        "Karan Tilak Kumar (kartilak)" <kartilak@cisco.com>,
        "James E.J. Bottomley"
	<jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Brian King <brking@us.ibm.com>,
        Intel SCU Linux support
	<intel-linux-scu@intel.com>,
        Artur Paszkiewicz <artur.paszkiewicz@intel.com>,
        Sathya Prakash <sathya.prakash@broadcom.com>,
        Chaitra P B
	<chaitra.basappa@broadcom.com>,
        Suganath Prabu Subramani
	<suganath-prabu.subramani@broadcom.com>,
        Chris Leech <cleech@redhat.com>, Bart Van Assche <bvanassche@acm.org>
CC: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "MPT-FusionLinux.pdl@broadcom.com" <MPT-FusionLinux.pdl@broadcom.com>,
        "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
        "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>
Subject: Re: [PATCH] scsi: Replace zero-length array with flexible-array
 member
Thread-Topic: [PATCH] scsi: Replace zero-length array with flexible-array
 member
Thread-Index: AQHV6y0gA+gNx0R/G0iCTUfJXVLRAqgqiTWAgAADLwCAAFsdZA==
Date: Mon, 24 Feb 2020 22:12:01 +0000
Message-ID: <SN6PR11MB30083056715E8EB5338BE59AD7EC0@SN6PR11MB3008.namprd11.prod.outlook.com>
References: <20200224161406.GA21454@embeddedor>
 <b44f60b7-3091-592e-b319-a929bcd19486@suse.com>,<026b4947-e38b-6d23-d330-414aebb19735@embeddedor.com>
In-Reply-To: <026b4947-e38b-6d23-d330-414aebb19735@embeddedor.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-MS-TNEF-Correlator: 
x-originating-ip: [2001:420:282:1330:6e0b:84ff:fe0c:f956]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b5e2c309-a623-498a-5da7-08d7b97692e1
x-ms-traffictypediagnostic: SN6PR11MB3262:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB32626A6D20A17CC400703B12D7EC0@SN6PR11MB3262.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 032334F434
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(396003)(136003)(39860400002)(366004)(376002)(346002)(199004)(189003)(86362001)(4326008)(19627405001)(54906003)(66556008)(66446008)(66946007)(91956017)(110136005)(9686003)(76116006)(66476007)(478600001)(55016002)(53546011)(64756008)(966005)(71200400001)(316002)(6506007)(21615005)(81156014)(81166006)(107886003)(8676002)(186003)(33656002)(7696005)(5660300002)(8936002)(2906002)(52536014)(921003)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:SN6PR11MB3262;H:SN6PR11MB3008.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O101Xo7GcunldijDTvYs/VOQyEpX77zTicACzQuV5tyg3tmLCxX7S2GcCVZgky0gYtIo+nFUtMZY7MDJBCRkFSOaiuvriVNxCenidlXDfm5gxleTmwjjlUKO36Ec08/irvgRF14eOem2UD1e2zwAnBKStkXEYm2HuH3ganjokXJIB3/tz8fcges5I9AwXZ/i4oOQnrWKzD6kNaVQUJ2qOUTJEzOd6BBxYurFaU+IeIlE9k5iO77S04nut6Sr0aPZvLrD5K5AR5FPHwldtUF9pgmiWXwR/LDH7tG+6PQUIDuTPE8pOkg6RmrBuF9xKuadOwv89MeLzYgbXO8drrlc8PfqRcl4HB2hgKfpM0pf4W0SDlKmlLAeswNqSBjDP6sFNHz508l/hKvJ5BmVQwgbU8NsoWmhkIgkINBR00W8FimnPnaeuqeMNv0jAaabpzYRdNc/mIFWw9oDHCaoE/jfwltF1RmrFXx2ixnNgyohFZbtsGeccgv8KawPMh5KGiZRWe9EEyJwNOZ6SKggyNiB773ZFNm7+sr/aLPkcSdQoLuUQw/sfPOkrTHvrc+EW6FhN+YSVxK/Trofsn5BfJ+K6Q==
x-ms-exchange-antispam-messagedata: dczIRvjmLb1O0Sr8ewyInxO5G3/F+84u4Jxnc5A2XFKj4AluH2eBJjsZI6STnKSpzuAtI/3vlzNaTtArL5wTi1RmXBRY7FE41d/hDsVqh5vvram050KvyCQZCadzi4Jeo8ALyJuD6/1T9pND0rM38hwqox8/ywV4itl01H8ajJcf2KIN1fqovSw5UVx0U/9vWgLUYvZENj8d+yqHSmdZGA==
Content-Type: multipart/alternative;
	boundary="_000_SN6PR11MB30083056715E8EB5338BE59AD7EC0SN6PR11MB3008namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b5e2c309-a623-498a-5da7-08d7b97692e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2020 22:12:01.6487
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 07qdF8swzc9YxVdLn3IbbrYY/6I4I2BMsoGekuHFgyVKAK3GyAY6qLT7lY4r96MTCKVYfORyWnnAYaveMHmBvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3262
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.36.7.14, xch-aln-004.cisco.com
X-Outbound-Node: rcdn-core-10.cisco.com
X-Original-Sender: satishkh@cisco.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cisco.com header.s=iport header.b=eWR0sqX3;       dkim=pass
 header.i=@cisco.onmicrosoft.com header.s=selector2-cisco-onmicrosoft-com
 header.b=wZQwHeLE;       arc=pass (i=1 spf=pass spfdomain=cisco.com dkim=pass
 dkdomain=cisco.com dmarc=pass fromdomain=cisco.com);       spf=pass
 (google.com: domain of satishkh@cisco.com designates 173.37.142.92 as
 permitted sender) smtp.mailfrom=satishkh@cisco.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=cisco.com
X-Original-From: "Satish Kharat (satishkh)" <satishkh@cisco.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

--_000_SN6PR11MB30083056715E8EB5338BE59AD7EC0SN6PR11MB3008namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Reviewed-by: Satish Kharat <satishkh@cisco.com>
________________________________
From: Gustavo A. R. Silva <gustavo@embeddedor.com>
Sent: Monday, February 24, 2020 8:42 AM
To: Lee Duncan <lduncan@suse.com>; Satish Kharat (satishkh) <satishkh@cisco=
.com>; Sesidhar Baddela (sebaddel) <sebaddel@cisco.com>; Karan Tilak Kumar =
(kartilak) <kartilak@cisco.com>; James E.J. Bottomley <jejb@linux.ibm.com>;=
 Martin K. Petersen <martin.petersen@oracle.com>; Brian King <brking@us.ibm=
.com>; Intel SCU Linux support <intel-linux-scu@intel.com>; Artur Paszkiewi=
cz <artur.paszkiewicz@intel.com>; Sathya Prakash <sathya.prakash@broadcom.c=
om>; Chaitra P B <chaitra.basappa@broadcom.com>; Suganath Prabu Subramani <=
suganath-prabu.subramani@broadcom.com>; Chris Leech <cleech@redhat.com>; Ba=
rt Van Assche <bvanassche@acm.org>
Cc: linux-scsi@vger.kernel.org <linux-scsi@vger.kernel.org>; linux-kernel@v=
ger.kernel.org <linux-kernel@vger.kernel.org>; MPT-FusionLinux.pdl@broadcom=
.com <MPT-FusionLinux.pdl@broadcom.com>; open-iscsi@googlegroups.com <open-=
iscsi@googlegroups.com>; linux-rdma@vger.kernel.org <linux-rdma@vger.kernel=
.org>
Subject: Re: [PATCH] scsi: Replace zero-length array with flexible-array me=
mber



On 2/24/20 10:30, Lee Duncan wrote:
> On 2/24/20 8:14 AM, Gustavo A. R. Silva wrote:
>> The current codebase makes use of the zero-length array language
>> extension to the C90 standard, but the preferred mechanism to declare
>> variable-length types such as these ones is a flexible array member[1][2=
],
>> introduced in C99:
>>
>> struct foo {
>>         int stuff;
>>         struct boo array[];
>> };
>>
>> By making use of the mechanism above, we will get a compiler warning
>> in case the flexible array does not occur last in the structure, which
>> will help us prevent some kind of undefined behavior bugs from being
>> inadvertently introduced[3] to the codebase from now on.
>>
>> Also, notice that, dynamic memory allocations won't be affected by
>> this change:
>>
>> "Flexible array members have incomplete type, and so the sizeof operator
>> may not be applied. As a quirk of the original implementation of
>> zero-length arrays, sizeof evaluates to zero."[1]
>>
>> This issue was found with the help of Coccinelle.
>>
>> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
>> [2] https://github.com/KSPP/linux/issues/21
>> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
>>
>> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
>> ---
>>  ...
>> diff --git a/include/scsi/iscsi_if.h b/include/scsi/iscsi_if.h
>> index 92b11c7e0b4f..b0e240b10bf9 100644
>> --- a/include/scsi/iscsi_if.h
>> +++ b/include/scsi/iscsi_if.h
>> @@ -311,7 +311,7 @@ enum iscsi_param_type {
>>  struct iscsi_param_info {
>>       uint32_t len;           /* Actual length of the param value */
>>       uint16_t param;         /* iscsi param */
>> -    uint8_t value[0];       /* length sized value follows */
>> +    uint8_t value[];        /* length sized value follows */
>>  } __packed;
>>
>>  struct iscsi_iface_param_info {
>> @@ -320,7 +320,7 @@ struct iscsi_iface_param_info {
>>       uint16_t param;         /* iscsi param value */
>>       uint8_t iface_type;     /* IPv4 or IPv6 */
>>       uint8_t param_type;     /* iscsi_param_type */
>> -    uint8_t value[0];       /* length sized value follows */
>> +    uint8_t value[];        /* length sized value follows */
>>  } __packed;
>>
>>  /*
>> @@ -697,7 +697,7 @@ enum iscsi_flashnode_param {
>>  struct iscsi_flashnode_param_info {
>>       uint32_t len;           /* Actual length of the param */
>>       uint16_t param;         /* iscsi param value */
>> -    uint8_t value[0];       /* length sized value follows */
>> +    uint8_t value[];        /* length sized value follows */
>>  } __packed;
>>
>>  enum iscsi_discovery_parent_type {
>> @@ -815,7 +815,7 @@ struct iscsi_stats {
>>        * up to ISCSI_STATS_CUSTOM_MAX
>>        */
>>       uint32_t custom_length;
>> -    struct iscsi_stats_custom custom[0]
>> +    struct iscsi_stats_custom custom[]
>>               __attribute__ ((aligned (sizeof(uint64_t))));
>>  };
>>
>> @@ -946,7 +946,7 @@ struct iscsi_offload_host_stats {
>>        * up to ISCSI_HOST_STATS_CUSTOM_MAX
>>        */
>>       uint32_t custom_length;
>> -    struct iscsi_host_stats_custom custom[0]
>> +    struct iscsi_host_stats_custom custom[]
>>               __aligned(sizeof(uint64_t));
>>  };
>>
>> diff --git a/include/scsi/scsi_bsg_iscsi.h b/include/scsi/scsi_bsg_iscsi=
.h
>> index fa0c820a1663..6b8128005af8 100644
>> --- a/include/scsi/scsi_bsg_iscsi.h
>> +++ b/include/scsi/scsi_bsg_iscsi.h
>> @@ -52,7 +52,7 @@ struct iscsi_bsg_host_vendor {
>>       uint64_t vendor_id;
>>
>>       /* start of vendor command area */
>> -    uint32_t vendor_cmd[0];
>> +    uint32_t vendor_cmd[];
>>  };
>>
>>  /* Response:
>> diff --git a/include/scsi/scsi_device.h b/include/scsi/scsi_device.h
>> index f8312a3e5b42..4dc158cf09b8 100644
>> --- a/include/scsi/scsi_device.h
>> +++ b/include/scsi/scsi_device.h
>> @@ -231,7 +231,7 @@ struct scsi_device {
>>       struct mutex            state_mutex;
>>       enum scsi_device_state sdev_state;
>>       struct task_struct      *quiesced_by;
>> -    unsigned long           sdev_data[0];
>> +    unsigned long           sdev_data[];
>>  } __attribute__((aligned(sizeof(unsigned long))));
>>
>>  #define     to_scsi_device(d)       \
>> @@ -315,7 +315,7 @@ struct scsi_target {
>>       char                    scsi_level;
>>       enum scsi_target_state  state;
>>       void                     *hostdata; /* available to low-level driv=
er */
>> -    unsigned long           starget_data[0]; /* for the transport */
>> +    unsigned long           starget_data[]; /* for the transport */
>>       /* starget_data must be the last element!!!! */
>>  } __attribute__((aligned(sizeof(unsigned long))));
>>
>> diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
>> index 7a97fb8104cf..e6811ea8f984 100644
>> --- a/include/scsi/scsi_host.h
>> +++ b/include/scsi/scsi_host.h
>> @@ -682,7 +682,7 @@ struct Scsi_Host {
>>        * and also because some compilers (m68k) don't automatically forc=
e
>>        * alignment to a long boundary.
>>        */
>> -    unsigned long hostdata[0]  /* Used for storage of host specific stu=
ff */
>> +    unsigned long hostdata[]  /* Used for storage of host specific stuf=
f */
>>               __attribute__ ((aligned (sizeof(unsigned long))));
>>  };
>>
>> diff --git a/include/scsi/scsi_ioctl.h b/include/scsi/scsi_ioctl.h
>> index 4fe69d863b5d..b465799f4d2d 100644
>> --- a/include/scsi/scsi_ioctl.h
>> +++ b/include/scsi/scsi_ioctl.h
>> @@ -27,7 +27,7 @@ struct scsi_device;
>>  typedef struct scsi_ioctl_command {
>>       unsigned int inlen;
>>       unsigned int outlen;
>> -    unsigned char data[0];
>> +    unsigned char data[];
>>  } Scsi_Ioctl_Command;
>>
>>  typedef struct scsi_idlun {
>> diff --git a/include/scsi/srp.h b/include/scsi/srp.h
>> index 9220758d5087..177d8026e96f 100644
>> --- a/include/scsi/srp.h
>> +++ b/include/scsi/srp.h
>> @@ -109,7 +109,7 @@ struct srp_direct_buf {
>>  struct srp_indirect_buf {
>>       struct srp_direct_buf   table_desc;
>>       __be32                  len;
>> -    struct srp_direct_buf   desc_list[0];
>> +    struct srp_direct_buf   desc_list[];
>>  } __attribute__((packed));
>>
>>  /* Immediate data buffer descriptor as defined in SRP2. */
>> @@ -244,7 +244,7 @@ struct srp_cmd {
>>       u8      reserved4;
>>       u8      add_cdb_len;
>>       u8      cdb[16];
>> -    u8      add_data[0];
>> +    u8      add_data[];
>>  };
>>
>>  enum {
>> @@ -274,7 +274,7 @@ struct srp_rsp {
>>       __be32  data_in_res_cnt;
>>       __be32  sense_data_len;
>>       __be32  resp_data_len;
>> -    u8      data[0];
>> +    u8      data[];
>>  } __attribute__((packed));
>>
>>  struct srp_cred_req {
>> @@ -306,7 +306,7 @@ struct srp_aer_req {
>>       struct scsi_lun lun;
>>       __be32  sense_data_len;
>>       u32     reserved3;
>> -    u8      sense_data[0];
>> +    u8      sense_data[];
>>  } __attribute__((packed));
>>
>>  struct srp_aer_rsp {
>> diff --git a/include/uapi/scsi/scsi_bsg_fc.h b/include/uapi/scsi/scsi_bs=
g_fc.h
>> index 3ae65e93235c..7f5930801f72 100644
>> --- a/include/uapi/scsi/scsi_bsg_fc.h
>> +++ b/include/uapi/scsi/scsi_bsg_fc.h
>> @@ -209,7 +209,7 @@ struct fc_bsg_host_vendor {
>>       __u64 vendor_id;
>>
>>       /* start of vendor command area */
>> -    __u32 vendor_cmd[0];
>> +    __u32 vendor_cmd[];
>>  };
>>
>>  /* Response:
>>
>
> Reviewed-by: Lee Duncan <lduncan@suse.com>
>

Thanks, Lee.

--
Gustavo

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/SN6PR11MB30083056715E8EB5338BE59AD7EC0%40SN6PR11MB3008.namprd11.=
prod.outlook.com.

--_000_SN6PR11MB30083056715E8EB5338BE59AD7EC0SN6PR11MB3008namp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Reviewed-by: Satish Kharat &lt;satishkh@cisco.com&gt;<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Gustavo A. R. Silva &=
lt;gustavo@embeddedor.com&gt;<br>
<b>Sent:</b> Monday, February 24, 2020 8:42 AM<br>
<b>To:</b> Lee Duncan &lt;lduncan@suse.com&gt;; Satish Kharat (satishkh) &l=
t;satishkh@cisco.com&gt;; Sesidhar Baddela (sebaddel) &lt;sebaddel@cisco.co=
m&gt;; Karan Tilak Kumar (kartilak) &lt;kartilak@cisco.com&gt;; James E.J. =
Bottomley &lt;jejb@linux.ibm.com&gt;; Martin K. Petersen &lt;martin.peterse=
n@oracle.com&gt;;
 Brian King &lt;brking@us.ibm.com&gt;; Intel SCU Linux support &lt;intel-li=
nux-scu@intel.com&gt;; Artur Paszkiewicz &lt;artur.paszkiewicz@intel.com&gt=
;; Sathya Prakash &lt;sathya.prakash@broadcom.com&gt;; Chaitra P B &lt;chai=
tra.basappa@broadcom.com&gt;; Suganath Prabu Subramani &lt;suganath-prabu.s=
ubramani@broadcom.com&gt;;
 Chris Leech &lt;cleech@redhat.com&gt;; Bart Van Assche &lt;bvanassche@acm.=
org&gt;<br>
<b>Cc:</b> linux-scsi@vger.kernel.org &lt;linux-scsi@vger.kernel.org&gt;; l=
inux-kernel@vger.kernel.org &lt;linux-kernel@vger.kernel.org&gt;; MPT-Fusio=
nLinux.pdl@broadcom.com &lt;MPT-FusionLinux.pdl@broadcom.com&gt;; open-iscs=
i@googlegroups.com &lt;open-iscsi@googlegroups.com&gt;;
 linux-rdma@vger.kernel.org &lt;linux-rdma@vger.kernel.org&gt;<br>
<b>Subject:</b> Re: [PATCH] scsi: Replace zero-length array with flexible-a=
rray member</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText"><br>
<br>
On 2/24/20 10:30, Lee Duncan wrote:<br>
&gt; On 2/24/20 8:14 AM, Gustavo A. R. Silva wrote:<br>
&gt;&gt; The current codebase makes use of the zero-length array language<b=
r>
&gt;&gt; extension to the C90 standard, but the preferred mechanism to decl=
are<br>
&gt;&gt; variable-length types such as these ones is a flexible array membe=
r[1][2],<br>
&gt;&gt; introduced in C99:<br>
&gt;&gt;<br>
&gt;&gt; struct foo {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int stuff;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct boo array[]=
;<br>
&gt;&gt; };<br>
&gt;&gt;<br>
&gt;&gt; By making use of the mechanism above, we will get a compiler warni=
ng<br>
&gt;&gt; in case the flexible array does not occur last in the structure, w=
hich<br>
&gt;&gt; will help us prevent some kind of undefined behavior bugs from bei=
ng<br>
&gt;&gt; inadvertently introduced[3] to the codebase from now on.<br>
&gt;&gt;<br>
&gt;&gt; Also, notice that, dynamic memory allocations won't be affected by=
<br>
&gt;&gt; this change:<br>
&gt;&gt;<br>
&gt;&gt; &quot;Flexible array members have incomplete type, and so the size=
of operator<br>
&gt;&gt; may not be applied. As a quirk of the original implementation of<b=
r>
&gt;&gt; zero-length arrays, sizeof evaluates to zero.&quot;[1]<br>
&gt;&gt;<br>
&gt;&gt; This issue was found with the help of Coccinelle.<br>
&gt;&gt;<br>
&gt;&gt; [1] <a href=3D"https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html=
">https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html</a><br>
&gt;&gt; [2] <a href=3D"https://github.com/KSPP/linux/issues/21">https://gi=
thub.com/KSPP/linux/issues/21</a><br>
&gt;&gt; [3] commit 76497732932f (&quot;cxgb3/l2t: Fix undefined behaviour&=
quot;)<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Gustavo A. R. Silva &lt;gustavo@embeddedor.com&gt;<=
br>
&gt;&gt; ---<br>
&gt;&gt;&nbsp; ...<br>
&gt;&gt; diff --git a/include/scsi/iscsi_if.h b/include/scsi/iscsi_if.h<br>
&gt;&gt; index 92b11c7e0b4f..b0e240b10bf9 100644<br>
&gt;&gt; --- a/include/scsi/iscsi_if.h<br>
&gt;&gt; &#43;&#43;&#43; b/include/scsi/iscsi_if.h<br>
&gt;&gt; @@ -311,7 &#43;311,7 @@ enum iscsi_param_type {<br>
&gt;&gt;&nbsp; struct iscsi_param_info {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint32_t len;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Actual length of the param v=
alue */<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint16_t param;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* iscsi param */<br>
&gt;&gt; -&nbsp;&nbsp;&nbsp; uint8_t value[0];&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; /* length sized value follows */<br>
&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; uint8_t value[];&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; /* length sized value follows */<br>
&gt;&gt;&nbsp; } __packed;<br>
&gt;&gt;&nbsp; <br>
&gt;&gt;&nbsp; struct iscsi_iface_param_info {<br>
&gt;&gt; @@ -320,7 &#43;320,7 @@ struct iscsi_iface_param_info {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint16_t param;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* iscsi param value */<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t iface_type;&nbsp;&nbsp=
;&nbsp;&nbsp; /* IPv4 or IPv6 */<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint8_t param_type;&nbsp;&nbsp=
;&nbsp;&nbsp; /* iscsi_param_type */<br>
&gt;&gt; -&nbsp;&nbsp;&nbsp; uint8_t value[0];&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; /* length sized value follows */<br>
&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; uint8_t value[];&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; /* length sized value follows */<br>
&gt;&gt;&nbsp; } __packed;<br>
&gt;&gt;&nbsp; <br>
&gt;&gt;&nbsp; /*<br>
&gt;&gt; @@ -697,7 &#43;697,7 @@ enum iscsi_flashnode_param {<br>
&gt;&gt;&nbsp; struct iscsi_flashnode_param_info {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint32_t len;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Actual length of the param *=
/<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint16_t param;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* iscsi param value */<br>
&gt;&gt; -&nbsp;&nbsp;&nbsp; uint8_t value[0];&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; /* length sized value follows */<br>
&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; uint8_t value[];&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; /* length sized value follows */<br>
&gt;&gt;&nbsp; } __packed;<br>
&gt;&gt;&nbsp; <br>
&gt;&gt;&nbsp; enum iscsi_discovery_parent_type {<br>
&gt;&gt; @@ -815,7 &#43;815,7 @@ struct iscsi_stats {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * up to ISCSI_STATS_CUST=
OM_MAX<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint32_t custom_length;<br>
&gt;&gt; -&nbsp;&nbsp;&nbsp; struct iscsi_stats_custom custom[0]<br>
&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; struct iscsi_stats_custom custom[]<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; __attribute__ ((aligned (sizeof(uint64_t))));<br>
&gt;&gt;&nbsp; };<br>
&gt;&gt;&nbsp; <br>
&gt;&gt; @@ -946,7 &#43;946,7 @@ struct iscsi_offload_host_stats {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * up to ISCSI_HOST_STATS=
_CUSTOM_MAX<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint32_t custom_length;<br>
&gt;&gt; -&nbsp;&nbsp;&nbsp; struct iscsi_host_stats_custom custom[0]<br>
&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; struct iscsi_host_stats_custom custom[]<br=
>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; __aligned(sizeof(uint64_t));<br>
&gt;&gt;&nbsp; };<br>
&gt;&gt;&nbsp; <br>
&gt;&gt; diff --git a/include/scsi/scsi_bsg_iscsi.h b/include/scsi/scsi_bsg=
_iscsi.h<br>
&gt;&gt; index fa0c820a1663..6b8128005af8 100644<br>
&gt;&gt; --- a/include/scsi/scsi_bsg_iscsi.h<br>
&gt;&gt; &#43;&#43;&#43; b/include/scsi/scsi_bsg_iscsi.h<br>
&gt;&gt; @@ -52,7 &#43;52,7 @@ struct iscsi_bsg_host_vendor {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint64_t vendor_id;<br>
&gt;&gt;&nbsp; <br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* start of vendor command are=
a */<br>
&gt;&gt; -&nbsp;&nbsp;&nbsp; uint32_t vendor_cmd[0];<br>
&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; uint32_t vendor_cmd[];<br>
&gt;&gt;&nbsp; };<br>
&gt;&gt;&nbsp; <br>
&gt;&gt;&nbsp; /* Response:<br>
&gt;&gt; diff --git a/include/scsi/scsi_device.h b/include/scsi/scsi_device=
.h<br>
&gt;&gt; index f8312a3e5b42..4dc158cf09b8 100644<br>
&gt;&gt; --- a/include/scsi/scsi_device.h<br>
&gt;&gt; &#43;&#43;&#43; b/include/scsi/scsi_device.h<br>
&gt;&gt; @@ -231,7 &#43;231,7 @@ struct scsi_device {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct mutex&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; state_mutex;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum scsi_device_state sdev_st=
ate;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct task_struct&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; *quiesced_by;<br>
&gt;&gt; -&nbsp;&nbsp;&nbsp; unsigned long&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; sdev_data[0];<br>
&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; unsigned long&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sdev_data[];<br>
&gt;&gt;&nbsp; } __attribute__((aligned(sizeof(unsigned long))));<br>
&gt;&gt;&nbsp; <br>
&gt;&gt;&nbsp; #define&nbsp;&nbsp;&nbsp;&nbsp; to_scsi_device(d)&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; \<br>
&gt;&gt; @@ -315,7 &#43;315,7 @@ struct scsi_target {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; scsi_level;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum scsi_target_state&nbsp; s=
tate;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; void&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; *hostdata; /* available to low-level driver */<br>
&gt;&gt; -&nbsp;&nbsp;&nbsp; unsigned long&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; starget_data[0]; /* for the transport */<br>
&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; unsigned long&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; starget_data[]; /* for the transport */<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* starget_data must be the la=
st element!!!! */<br>
&gt;&gt;&nbsp; } __attribute__((aligned(sizeof(unsigned long))));<br>
&gt;&gt;&nbsp; <br>
&gt;&gt; diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h<b=
r>
&gt;&gt; index 7a97fb8104cf..e6811ea8f984 100644<br>
&gt;&gt; --- a/include/scsi/scsi_host.h<br>
&gt;&gt; &#43;&#43;&#43; b/include/scsi/scsi_host.h<br>
&gt;&gt; @@ -682,7 &#43;682,7 @@ struct Scsi_Host {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * and also because some =
compilers (m68k) don't automatically force<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * alignment to a long bo=
undary.<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt;&gt; -&nbsp;&nbsp;&nbsp; unsigned long hostdata[0]&nbsp; /* Used for st=
orage of host specific stuff */<br>
&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; unsigned long hostdata[]&nbsp; /* Used for=
 storage of host specific stuff */<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; __attribute__ ((aligned (sizeof(unsigned long))));<br>
&gt;&gt;&nbsp; };<br>
&gt;&gt;&nbsp; <br>
&gt;&gt; diff --git a/include/scsi/scsi_ioctl.h b/include/scsi/scsi_ioctl.h=
<br>
&gt;&gt; index 4fe69d863b5d..b465799f4d2d 100644<br>
&gt;&gt; --- a/include/scsi/scsi_ioctl.h<br>
&gt;&gt; &#43;&#43;&#43; b/include/scsi/scsi_ioctl.h<br>
&gt;&gt; @@ -27,7 &#43;27,7 @@ struct scsi_device;<br>
&gt;&gt;&nbsp; typedef struct scsi_ioctl_command {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int inlen;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int outlen;<br>
&gt;&gt; -&nbsp;&nbsp;&nbsp; unsigned char data[0];<br>
&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; unsigned char data[];<br>
&gt;&gt;&nbsp; } Scsi_Ioctl_Command;<br>
&gt;&gt;&nbsp; <br>
&gt;&gt;&nbsp; typedef struct scsi_idlun {<br>
&gt;&gt; diff --git a/include/scsi/srp.h b/include/scsi/srp.h<br>
&gt;&gt; index 9220758d5087..177d8026e96f 100644<br>
&gt;&gt; --- a/include/scsi/srp.h<br>
&gt;&gt; &#43;&#43;&#43; b/include/scsi/srp.h<br>
&gt;&gt; @@ -109,7 &#43;109,7 @@ struct srp_direct_buf {<br>
&gt;&gt;&nbsp; struct srp_indirect_buf {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct srp_direct_buf&nbsp;&nb=
sp; table_desc;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __be32&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; len;<br>
&gt;&gt; -&nbsp;&nbsp;&nbsp; struct srp_direct_buf&nbsp;&nbsp; desc_list[0]=
;<br>
&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; struct srp_direct_buf&nbsp;&nbsp; desc_lis=
t[];<br>
&gt;&gt;&nbsp; } __attribute__((packed));<br>
&gt;&gt;&nbsp; <br>
&gt;&gt;&nbsp; /* Immediate data buffer descriptor as defined in SRP2. */<b=
r>
&gt;&gt; @@ -244,7 &#43;244,7 @@ struct srp_cmd {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; reserved4;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; add_cdb_len;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; cdb[16];<br>
&gt;&gt; -&nbsp;&nbsp;&nbsp; u8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; add_data[0];<=
br>
&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; u8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; add_data[=
];<br>
&gt;&gt;&nbsp; };<br>
&gt;&gt;&nbsp; <br>
&gt;&gt;&nbsp; enum {<br>
&gt;&gt; @@ -274,7 &#43;274,7 @@ struct srp_rsp {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __be32&nbsp; data_in_res_cnt;<=
br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __be32&nbsp; sense_data_len;<b=
r>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __be32&nbsp; resp_data_len;<br=
>
&gt;&gt; -&nbsp;&nbsp;&nbsp; u8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; data[0];<br>
&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; u8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; data[];<b=
r>
&gt;&gt;&nbsp; } __attribute__((packed));<br>
&gt;&gt;&nbsp; <br>
&gt;&gt;&nbsp; struct srp_cred_req {<br>
&gt;&gt; @@ -306,7 &#43;306,7 @@ struct srp_aer_req {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct scsi_lun lun;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __be32&nbsp; sense_data_len;<b=
r>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32&nbsp;&nbsp;&nbsp;&nbsp; re=
served3;<br>
&gt;&gt; -&nbsp;&nbsp;&nbsp; u8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sense_data[0]=
;<br>
&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; u8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sense_dat=
a[];<br>
&gt;&gt;&nbsp; } __attribute__((packed));<br>
&gt;&gt;&nbsp; <br>
&gt;&gt;&nbsp; struct srp_aer_rsp {<br>
&gt;&gt; diff --git a/include/uapi/scsi/scsi_bsg_fc.h b/include/uapi/scsi/s=
csi_bsg_fc.h<br>
&gt;&gt; index 3ae65e93235c..7f5930801f72 100644<br>
&gt;&gt; --- a/include/uapi/scsi/scsi_bsg_fc.h<br>
&gt;&gt; &#43;&#43;&#43; b/include/uapi/scsi/scsi_bsg_fc.h<br>
&gt;&gt; @@ -209,7 &#43;209,7 @@ struct fc_bsg_host_vendor {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __u64 vendor_id;<br>
&gt;&gt;&nbsp; <br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* start of vendor command are=
a */<br>
&gt;&gt; -&nbsp;&nbsp;&nbsp; __u32 vendor_cmd[0];<br>
&gt;&gt; &#43;&nbsp;&nbsp;&nbsp; __u32 vendor_cmd[];<br>
&gt;&gt;&nbsp; };<br>
&gt;&gt;&nbsp; <br>
&gt;&gt;&nbsp; /* Response:<br>
&gt;&gt;<br>
&gt; <br>
&gt; Reviewed-by: Lee Duncan &lt;lduncan@suse.com&gt;<br>
&gt; <br>
<br>
Thanks, Lee.<br>
<br>
--<br>
Gustavo<br>
</div>
</span></font></div>
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/SN6PR11MB30083056715E8EB5338BE59AD7EC0%40SN6PR11MB300=
8.namprd11.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfooter">https:/=
/groups.google.com/d/msgid/open-iscsi/SN6PR11MB30083056715E8EB5338BE59AD7EC=
0%40SN6PR11MB3008.namprd11.prod.outlook.com</a>.<br />

--_000_SN6PR11MB30083056715E8EB5338BE59AD7EC0SN6PR11MB3008namp_--
