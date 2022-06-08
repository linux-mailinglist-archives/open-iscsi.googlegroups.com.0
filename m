Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB2UDQOKQMGQERMYOXTI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEBD543789
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Jun 2022 17:36:13 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id z129-20020aca3387000000b0032ebe2efbb5sf2626916oiz.15
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Jun 2022 08:36:13 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1654702572; cv=pass;
        d=google.com; s=arc-20160816;
        b=JWySu1qF0tOeTygKPZxlXdhqtarnJGllZxN7IVFicO9/DYDB4EJLGlRyFQWqAzDkCr
         J3OcAb1w65f2MXd2tfw0iL7ivYDSyEmk5HmXINO+VzHb5cCH0q3Mf/Lcr5KxPL00S0dF
         9Bkpn9B5E16mObQw1Ylo0DPAIZ1Qq3GgdiPArbeqyFrc/7JPwBMozDoFMqJCydY0p5lO
         nnoEFgShmNfW/ssS5WMkGYrTtm+kFLxUhvroO2njXIJIwbi/NNMqegAZCQGMaWIgPc6E
         jQR6ElypFLiqQhK7WiEQWxseciyyXoqlZxRNSL5F0jBeaCQjHtZWqdwSO7gJjCOeK6Mf
         rD+A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=kciakIxDgKcDYmipdwbfef2ux/yRVn1+qT9RGc+7EGM=;
        b=ZJxRZKG4OzQ0uXfsJ7em2+JsyubhCrdGEyh9yP+I7encgEt6EG2LSHvzvJnhJKqq7o
         X6y6607C0oidZQuP4gcWg2KWphA9b5kpW5p2HUkwjj2l5UUDr+JpkmZSlwgYvqH191UE
         N5JCM5qUbQ2eFXU2eqxyNU8y9KXeikdR3hlfqgpWNxgPkQMVItktHQup03apYnHr5Lvo
         3coTWjU0am9OXiZqDNGfuXp72rLJil6DY4kx27oR4xndpv9Ub2gQhH160ckQ12Ytyufs
         5QuTheOmnuCFYFneBv7Z2+H/PxFOUdwJr7ArIIYixpCsdli8qgKxmUAMsIswSOzqqcXE
         L21A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=SXFj5AG6;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=nwptWRVY;
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
        bh=kciakIxDgKcDYmipdwbfef2ux/yRVn1+qT9RGc+7EGM=;
        b=IXsJmqovLg8Gx6Yf30MhJPO2toD8RzQg9OqfDINeCuhxoan8DT+wmvIGoNrQKW62pf
         aGlyzGo69Fw1muS/NSe79ZEtL8/4XyBrHRUgEHbxX4bNPTl5gKqMK+dbEuMSqqlzrSPE
         8dhr2u6+fSysF4HCL/FQYnXLz7QFXZ8z8Pi9fARw+ESscTQxwnTI+M3vfUsW+csBRoSq
         mtItoALNEk4pAOTyNiJDEDQVp6+3YCsUbA5ZPSWCImTEF0kum/uH00qmJWl4NYcI4mA6
         tPU93/8I2bMCUr6DOxKhZb3EHh+oP304vNuf9kldZwi8fge3bCGN6w89rw6POiFdS8Xa
         06dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kciakIxDgKcDYmipdwbfef2ux/yRVn1+qT9RGc+7EGM=;
        b=G7G10pV8GcT9bi8QMvNhlDtm/JvV9cfEo8h6QR0jW0aZZ1wgujYvYIwjCsGR+IE/Kf
         PXWQqhmoWzIuXJE5C1AvkcSr5UaAGdKDOJOoM8NS17np47ywpe2XzSBFVWp6h7XmDlRm
         ZYlF56I+cPE7ZcMgXrj/2/A107F6+vr4iQbA25uqb8CRINPUcSHfY3hDgrB2XzEdlF29
         d4aBPqlxLlgrJ8Amx9dqXF2JB6uv6TX6J+VRcU7IBW139h2LKF+5Vjz/ZZQZrGXXjKsg
         llU86xriGhep5JQW06hyAJQsdWgPG2p9aogOJzooAQ6skFaPT+iCpJ+HBPw7Bs2xSmaP
         jEfg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532xL5MGww4u68l7KV1MwVe9UaxgF6PQeDfnBPjdMJ46Q6+RoIyU
	S3T+TBDXL17x4Ei80H1bkKg=
X-Google-Smtp-Source: ABdhPJwVGrTp24T/diEI3tFF4CQkkRxcfLyo4WDs4JV7E8MyHn/h2lD4sPEQPZbB0AN8GThigbb7YQ==
X-Received: by 2002:a05:6808:bd1:b0:32e:431c:2c4f with SMTP id o17-20020a0568080bd100b0032e431c2c4fmr2707066oik.269.1654702572124;
        Wed, 08 Jun 2022 08:36:12 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:1885:b0:326:a83a:293c with SMTP id
 bi5-20020a056808188500b00326a83a293cls6891286oib.3.gmail; Wed, 08 Jun 2022
 08:36:10 -0700 (PDT)
X-Received: by 2002:a05:6808:2385:b0:32e:71c2:fe9d with SMTP id bp5-20020a056808238500b0032e71c2fe9dmr2807675oib.68.1654702570467;
        Wed, 08 Jun 2022 08:36:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1654702570; cv=pass;
        d=google.com; s=arc-20160816;
        b=OV8KESSyi2lSCBxxYV2PTq7LJmaO2pNeGGmSC4uc43pmZU4nTG405MX16hUsf/tyCK
         LbxsRRM4IG8I0z1IhiWOE8cwSokuIfp50QPg/MT84xKiB32hHVTffbAPhmR9LBO5SCa6
         moRz2shQp9CPXBRIyLf5n5/dvUzNMbzPbrYfJETXZ3uTPywdqyg0T0iy6LubCierE+kO
         sdNH5/ECdmhggYQGXUwjIa0UEhBi3Dok5WPSGD0TidBAOqmJcjjwlkoUXSLA5Tl2fBju
         T3VGEieUaa3tNpOftVVaKm1k2UaO8FYE2qtv+A/3aRQdWfEhWnHQ+haPlrAPDorWW0wc
         8uig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=uwbFVb5j2JuJPDjLyOOBo4mXbljk7kb+bTZozyuJkko=;
        b=xyh/udpsAGTQQb/xWvRHOZ5s/9NEJ/BiaJI/qPHHkSyJHM/rGOgBiWaVrquOslpOro
         rJ/EID6ARzpQ4+wQtYHGNJalGsCsBMt6QFM18xdyt3TlNXsBzH3wpQSCI3uX0Wqm/vJx
         3ZUvAxbj1M76pZGIYNTVisVXrlthLKOEaHqJ39LT5WSafgtFPA3KarwXc3m60g2h/Qmk
         NkD75Ci595BsHvVzerGBuFrWNN/V581otOcLyLWgVo9D2ljXNmNFUwVNjF3F+rr16vNm
         H/fkB2/zDywpLg1od1AnJNojXxLb7/OlX//s7jP5IpfYMjS5IMFpCbuNHL2BUCcbWB8Q
         4VDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=SXFj5AG6;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=nwptWRVY;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id bq10-20020a05680823ca00b003222fdff9aesi1627524oib.0.2022.06.08.08.36.10
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jun 2022 08:36:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 258Dx1De009246;
	Wed, 8 Jun 2022 15:36:10 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3gfyekgsn6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 08 Jun 2022 15:36:09 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 258FGZPE031609;
	Wed, 8 Jun 2022 15:36:08 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2048.outbound.protection.outlook.com [104.47.66.48])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id 3gfwu3nscq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 08 Jun 2022 15:36:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BLu7bpGiI21ouT4SQcbAVS6QApL7ZGToyfN/vqbTnfuNaHjE5DcZG4cPcy1csapQNTHoXhLAN+W9XSBzU2/oVvNuAmEga3/vaGD63fXG2ujZaiMdl8HK4TWUUKvxavcmJqPHFbpBZW+9BKNRYXHAXxEuulYbn1XQeVeI0tT/KGVnMGT5KfFw8cm9StlMQiCy5OX39kF31Y9tPlF3kDDBwiTXoIDtgc7tFHgc0Ts90Fr3rufCVOuftxs13Ss8pqxBS3lrEPGgiKX3yU+8MHIg7LkmGntFp0c+bhtRe8ULAl52U0TE4G0Ku0p4qvoKRGG91+g0m66HjhXn3pEfT7HuyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uwbFVb5j2JuJPDjLyOOBo4mXbljk7kb+bTZozyuJkko=;
 b=NgJ/1Foya40B/4UHwRWIaco9xLcJ0O+SAkFlyIzeVYCvJb4pmhOjR/CRMIH0YIqwbdz1YJn5urUHgn67+Boa7tXqIxrMTt+Y2Fp57cTNIst/JOrsvP+GsEmyrA0crU8i3cqqnBq7hYJ+jbbIN0rEZT6NegikSaXYdOdMDM5mWIsSm8IgTr7AjLXtAbR3ra3wZU1+siwXOs52OuPzh6wD4CE0eNGBI6HqL7f2Rj7EE35W/DM40IcZsgJp37Vfj7FMxFx+ztI2eo5aCC/XtLzEhi8ur+WRKhNsvXYdZyd9qrXAoHE/Eol8uRLoLaqZ5lheGirNvPbRWvu+qf/b+PUrXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 PH0PR10MB5847.namprd10.prod.outlook.com (2603:10b6:510:146::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.12; Wed, 8 Jun
 2022 15:36:06 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::f81d:b8ef:c5a4:9c9b]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::f81d:b8ef:c5a4:9c9b%3]) with mapi id 15.20.5314.019; Wed, 8 Jun 2022
 15:36:06 +0000
Message-ID: <48af6f5f-c3b6-ac65-836d-518153ab2dd5@oracle.com>
Date: Wed, 8 Jun 2022 10:36:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] scsi: iscsi: prefer xmit of DataOut before new cmd
Content-Language: en-US
To: Dmitriy Bogdanov <d.bogdanov@yadro.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>
Cc: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
        "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
        "linux@yadro.com" <linux@yadro.com>,
        Konstantin Shelekhin <k.shelekhin@yadro.com>
References: <20220607131953.11584-1-d.bogdanov@yadro.com>
 <769c3acb-b515-7fd8-2450-4b6206436fde@oracle.com>
 <6a58acb4-e29e-e8c7-d85c-fe474670dad7@oracle.com>
 <e5c2ab5b4de8428495efe85865980133@yadro.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <e5c2ab5b4de8428495efe85865980133@yadro.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DM6PR08CA0055.namprd08.prod.outlook.com
 (2603:10b6:5:1e0::29) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 556faa5d-a39d-4fd7-3fa2-08da49649a96
X-MS-TrafficTypeDiagnostic: PH0PR10MB5847:EE_
X-Microsoft-Antispam-PRVS: <PH0PR10MB5847B7D95D66B02E50AF9C64F1A49@PH0PR10MB5847.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MRpZQa8PaFdb9H7uAxsyvkXS1MWsq+cTt5hP05QZquMuEyEKu/TVwVISBg3ZsE8pOEj312JwWLsvYG8dLaY/RZiiehoABUp0HLkE9bUphSrY86iDh5wVkb1/BEZ0Kid8SvQTyKjWCZMNIMus6kZPm0HPIRgi9XJej9pAj1bLXvg8Tvm3F/rS+CS5Pr5UmpdiEo2HgcqBq7KV++epqKCM4aQY95/aqWm17C3F+m3hEcbglvOYsstFBSxezXEb6MMwbOEdWsORDYuXlgiBW3eAMZznxnoBs0MM3ipf4XlBLFiOk/eOQ/HgZvC+TKcrCbPoM5CLV3iPUm/p6Gj9ctQtz2JKoZACMVninHCGYPRsYHWsDS4D8RANX34FirRtGAlJ2b1I1mGX9OuI5n/V8SqXpeTxPoSmp561kuwo/UX5lL2CQMA3JSOUbDp30f+r6R4VvFuM9SVESwPKimCpn5CPdIzveG3alInAMER3SIVVu3xhPldr/HTDu71ech5r09gM+1gmnatAOu9ZoI0A5tlnxd29W2zRdbftCac/4PjvltPF4Y4LhFYTyrsxziS1vBEJkkreIa4pMD8zwBM9KxKjyMmAMsvjG5HsEMgl65/nrWpUpYFjlsW8AZb64+PKEFAKapzWQ++84lCLXryMMXiCV20B0XT2GL1a/tGvDVpTLgr/pQ54diXvOkUt26kDjo+2GTWjxw/mW6p/SksnanbrffiwD3mj3F7jzz9KbYj1uOsVjCMiBWKvjKzJQ3AD3OWJuyXirm75D7yCuW7d2/p/8du0iQIDejboLkzP/Wtwkzbcctq1+J/CkCEiKcSzD+5Q
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(36756003)(26005)(2906002)(2616005)(8936002)(31686004)(66556008)(66476007)(8676002)(66946007)(4326008)(5660300002)(53546011)(54906003)(6506007)(6512007)(316002)(186003)(110136005)(83380400001)(31696002)(508600001)(38100700002)(6486002)(966005)(86362001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVVoSHRyT0FCOGRzTCs4ZTlYQUwvU3l3NUwwRk9vMzJESjVENG1SRWdOdll5?=
 =?utf-8?B?TGUxbllZNU5kWkZXWEo2Mm5pMUluTnIraS9VYjk2RnlMVXM3SG5TazRYaDdk?=
 =?utf-8?B?SnNzaHNIYlJoMWlKZWlmVTZ4OEt3MlFiOU1Ia2gvQnh5RUd4ejRHVXhaYVIv?=
 =?utf-8?B?V1dvYUFBMi9PVldwdGVCYjR0WXdIcG90WTRoMTJ2WGNodnJ0TDlNNEc5UlNa?=
 =?utf-8?B?eHM4YktEYnI4bmkvaFYzSm13cDJJUTBYcjNHNkNSa1ZXMmVkQ25Ua1VIMnVn?=
 =?utf-8?B?ZGtrK1RIU3pYVzZpVjlzL0dmYndmVDRYQ3p6a29rdkRaaDRBdWk5NTVLYXN3?=
 =?utf-8?B?OTU2aGV2dXlzbk9pNi82bnhnMDZOSVlXa3hWcXg5U3hsUkRmTVZmL1JIUjNH?=
 =?utf-8?B?UVR6TjZ5cWgyV28xRWNWbFBaa3ZUOWtVeDgxczhOK3F6eEdEbDZzcWZRYnhs?=
 =?utf-8?B?ZFFEdFlIZHZPRmVHMGR0S25VeTFSblBaM09UU0x4RlJOYytSTGpOS1p0Zm53?=
 =?utf-8?B?bEc1ZlI2T1pYRG4rM0F5R2xxZXBUWDFvQW1iM28rRkIydk1RaGU2SXkzWEZO?=
 =?utf-8?B?bGR0T3ppUXZDeDV0bGhuOTJyQUVzRXdBV0x4M2hqZE9PRFRvR0Uwc0pjaGsv?=
 =?utf-8?B?dTV5WnVvOUdGZTJZSlJoWVgwNlFYWkI3ZUZheWgyYWpJUGl6WHRzdVVjVlZG?=
 =?utf-8?B?eVFaMHFHWXJ2VzJLY0g1c1JLUXBoc1V3U0E1OTdLdnFHSDMyTUhQWE4rajV2?=
 =?utf-8?B?dmIrMHlGa280L1lZdEtNekw2TFFBTjdTSG9hbXJKSU1oNURmMU5qeHcxeGpF?=
 =?utf-8?B?QkZGRkorTzg2K2x6UkRiVXYxSHlWOXBGczdKcVRsVWptVEUzRk9VdXAyM3hs?=
 =?utf-8?B?TU1wdSt1b2Vud2hrOFNNTVlTRVlqdU1sSEhYRnorb216U3NENG1LVXh2S3JN?=
 =?utf-8?B?WWl1Nkk3UFJRbCtTaW9iQkpPbkNSQ2FCVGdEUlpqVk5WWEJMcGFUb0lGa0Nx?=
 =?utf-8?B?TGx6T0hTSXFrL0srQUlnUWJtN0UzNFRtK3Q1SXl0VWE1VjEvVElnZjhwSXI1?=
 =?utf-8?B?cVZMalZFZ1dONUVaYVlzNkRwaVdUbmxDNm5BcHcrbDBNc1M5Y2U1WU9PK0NS?=
 =?utf-8?B?OW5qcUF0MmlNQTJwdmV2S056dG45eTl6WG1mUlBvT0dSVGo5RTlQc01rNmtL?=
 =?utf-8?B?Q0pzRGp4VlFxMFIvQzdjQndLY1I4cWRzbC9xUGg3dk9jNC9XUXFOOEtsSjNx?=
 =?utf-8?B?R0UrbjJyemRkVkNKRTlPaGpSZU1WZVY1UDVhdDBWcnBuaUt0M3FCNmYzWVVh?=
 =?utf-8?B?Y2VHaFRoc08rQWVQUWJES0NieG9tdU1QeHp1VHNkeTNMdFlzVzk5SnVIdnVI?=
 =?utf-8?B?bWZPUGQwVFE0RGxzaDg0aWtIZkdjd2w2S3BkMGtQYVNMeXF5dU1GZ1JKWWxI?=
 =?utf-8?B?Vk9UNm5xbzNibkIrYjNaVklMMlRmTEphU1NLVnlOT1I4M0k1SUFPRU1qZjZj?=
 =?utf-8?B?TGRJaUFrZkQ5WlQ4UVgrbGlDbUEyT1JWUldWRVlLSHZSSHVZdFl6Z1NMUXpU?=
 =?utf-8?B?MVhyNC8wTWFQN0V5RDFoOEEyWHhOMFVvMU43Z1lwTmlKYlVGMTZZN1JCZEVP?=
 =?utf-8?B?ZUc1UGNIdldjLzU1MDJPblVLeTF0UC94YUJKNmhOeUV6WGYvZjJ5amt6WGds?=
 =?utf-8?B?SDh5ditnMGFBZUhnQk9Nb1FTZ0hrODRDT2N5OVQxVjlnL0ZGNFR0MXB1R1hB?=
 =?utf-8?B?b3dIQXgyUHUrS3JObk1MeUkrRVJxeDFrSGw1OXFPS0VCQXJ1VW1QMXMrYU9N?=
 =?utf-8?B?VGZtOWFObnlqRTAwT1p4T01YaUNTZUUxN0o4a0JNNFZHV1FiUkJDQ2VtQ2Qw?=
 =?utf-8?B?dEsvRElDUkZWWE0zVjVtMCt0U2trcnFoY1JLNDJ2KytKaE9XaGR2d3c2dGJr?=
 =?utf-8?B?MFc5K0lVcHVjRjFGaTNSeHlReEtkYXBGTmNFMlZMeHhkTForZ1g3RE5vZEwy?=
 =?utf-8?B?cmlhYml6SXRXOEszRkdPQk1aMUdrTDZGQWNpVkxLRXJCc3RKSVpqYitYaFhR?=
 =?utf-8?B?MmZiVWk0c2RBckpxZjZ5N25zYWljcWRQZUsrTE1UK0lwWHduL2Z0bWVoaGtz?=
 =?utf-8?B?em5WOXo2SjNrQVRXc1dtY1ZPeDJibUIzS1VzajhhbGRPZzB4OC9GeHNhQ2ZS?=
 =?utf-8?B?amwvTVM2dDBTWFlvbHExTFZBWFM4a3hoQzQzK0RTUTRyZVlYbVg2VEwvZHg5?=
 =?utf-8?B?Q2k1R05YY2xHNEdGNzhTdVZUV1hheC9MTlNSVGVSaTBLaUhYQUVkV1FsWHd5?=
 =?utf-8?B?ZFhOS1AzaE9qRmhTSlVrSFVBQ3RUT01rdUFxMWhuQ0NFcEErOUd0VVk5SEt2?=
 =?utf-8?Q?7GXGTu4HYg8L7mHI=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 556faa5d-a39d-4fd7-3fa2-08da49649a96
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2022 15:36:06.7160
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D2OLUzVUNuzwE1YXANT6YbgjofndDjvli/YYO3r745Gqsw3UFv1hmuGMHMUtTR8DLI83ZFRxNWoi4cDW0KCZ7r2w9n97mN5Tbr+L7nu13Yg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5847
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517,18.0.874
 definitions=2022-06-08_04:2022-06-07,2022-06-08 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 spamscore=0
 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2206080065
X-Proofpoint-GUID: 9_5To7znGOTrCvQ5jlqcocgkbgLNzeAB
X-Proofpoint-ORIG-GUID: 9_5To7znGOTrCvQ5jlqcocgkbgLNzeAB
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=SXFj5AG6;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=nwptWRVY;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 6/8/22 9:16 AM, Dmitriy Bogdanov wrote:
> Hi Mike,
> 
>> On 6/7/22 10:55 AM, Mike Christie wrote:
>>> On 6/7/22 8:19 AM, Dmitry Bogdanov wrote:
>>>> In function iscsi_data_xmit (TX worker) there is walking through the
>>>> queue of new SCSI commands that is replenished in parallell. And only
>>>> after that queue got emptied the function will start sending pending
>>>> DataOut PDUs. That lead to DataOut timer time out on target side and
>>>> to connection reinstatment.
>>>>
>>>> This patch swaps walking through the new commands queue and the pending
>>>> DataOut queue. To make a preference to ongoing commands over new ones.
>>>>
>>>
>>> ...
>>>
>>>>              task = list_entry(conn->cmdqueue.next, struct iscsi_task,
>>>> @@ -1594,28 +1616,10 @@ static int iscsi_data_xmit(struct iscsi_conn *conn)
>>>>               */
>>>>              if (!list_empty(&conn->mgmtqueue))
>>>>                      goto check_mgmt;
>>>> +            if (!list_empty(&conn->requeue))
>>>> +                    goto check_requeue;
>>>
>>>
>>>
>>> Hey, I've been posting a similar patch:
>>>
>>> https://urldefense.com/v3/__https://www.spinics.net/lists/linux-scsi/msg156939.html__;!!ACWV5N9M2RV99hQ!LHLghPLuyBZadpsGme03-HBoowa8sNiZYMKxKoz5E_BNu-M9-BiuNV_JS9kFxhnumNfhrxuR7qVdIaOH5X7iTfMO$ 
>>>
>>> A problem I hit is a possible pref regression so I tried to allow
>>> us to start up a burst of cmds in parallel. It's pretty simple where
>>> we allow up to a queue's worth of cmds to start. It doesn't try to
>>> check that all cmds are from the same queue or anything fancy to try
>>> and keep the code simple. Mostly just assuming users might try to bunch
>>> cmds together during submission or they might hit the queue plugging
>>> code.
>>>
>>> What do you think?
>>
>> Oh yeah, what about a modparam batch_limit? It's between 0 and cmd_per_lun.
>> 0 would check after every transmission like above.
> 
>  Did you really face with a perf regression? I could not imagine how it is
> possible.
> DataOut PDU contains a data too, so a throughput performance cannot be
> decreased by sending DataOut PDUs.


We can agree that queue plugging and batching improves throughput right?
The app or block layer may try to batch commands. It could be with something
like fio's batch args or you hit the block layer queue plugging.

With the current code we can end up sending all cmds to the target in a way
the target can send them to the real device batched. For example, we send off
the initial N scsi command PDUs in one run of iscsi_data_xmit. The target reads
them in, and sends off N R2Ts. We are able to read N R2Ts in the same call.
And again we are able to send the needed data for them in one call of
iscsi_data_xmit. The target is able to read in the data and send off the
WRITEs to the physical device in a batch.

With your patch, we can end up not batching them like the app/block layer
intended. For example, we now call iscsi_data_xmit and in the cmdqueue loop.
We've sent N - M scsi cmd PDUs, then see that we've got an incoming R2T to
handle. So we goto check_requeue. We send the needed data. The target then
starts to send the cmd to the physical device. If we have read in multiple
R2Ts then we will continue the requeue loop. And so we might be able to send
the data fast enough that the target can then send those commands to the
physical device. But we've now broken up the batching the upper layers sent
to us and we were doing before.

> 
>  The only thing is a latency performance. But that is not an easy question.

Agree latency is important and that's why I was saying we can make it config
option. Users can continue to try and batch their cmds and we don't break
them. We also fix the bug in that we don't get stuck in the cmdqueue loop
always taking in new cmds.

> IMHO, a system should strive to reduce a maximum value of the latency almost
> without impacting of a minimum value (prefer current commands) instead of
> to reduce a minimum value of the latency to the detriment of maximum value
> (prefer new commands).
> 
>  Any preference of new commands over current ones looks like an io scheduler

I can see your point of view where you see it as preferring new cmds
vs existing. It's probably due to my patch not hooking into commit_rqs
and trying to figure out the batching exactly. It's more of a simple
estimate.

However, that's not what I'm talking about. I'm talking about the block
layer / iosched has sent us these commands as a batch. We are now more
likely to break that up.

> functionality, but on underlying layer, so to say a BUS layer.
> I think is a matter of future investigation/development.
> 
> BR,
>  Dmitry

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/48af6f5f-c3b6-ac65-836d-518153ab2dd5%40oracle.com.
