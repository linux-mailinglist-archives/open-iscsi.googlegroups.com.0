Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBPMJSOUAMGQEFKKHYSQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 870E67A28BD
	for <lists+open-iscsi@lfdr.de>; Fri, 15 Sep 2023 22:55:29 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id d9443c01a7336-1c0aaf4caaasf22321985ad.2
        for <lists+open-iscsi@lfdr.de>; Fri, 15 Sep 2023 13:55:29 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1694811328; cv=pass;
        d=google.com; s=arc-20160816;
        b=WjkmAM6OpVzmi2LdlAoux8qA8uk0ZxGnYBAXQImewZdKIULfZ+bZlaLzldx0aDhfdE
         ohwlLlS/EHjgveNKDZHqMdRpWdJlnOlkVOtJfKEWmOn76+mYeSKWdTsUx2F1N/wDWf2K
         Fjrt9Gp3e1f4bhL2HNOLDTShZt8d1Xx0gc5YWOtQdIQPMs+v+2uSTTKj5Wy2xF7e2Xe2
         L6ZbnLKtltBM0OyUA76Vzy9xQAEtrJ1mpnSeLRRMNpYuKrRX608zP/nLWb4w4U4llFOF
         6DRCH+2i25fgz6On9NeCWf/tkE/jsOS4ao+2Gt3PSUYct/yNmOBahZYNta6UtJqhFCz2
         vH/g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=i63spSgF0BrS35R5CpYPHWeMShpw4lvBA0bQp+un6hg=;
        fh=k1jeTuCRZxH7IGA2qb/t+jbj64wKYRvkRbEo7HiOPoQ=;
        b=PwQJY1kyxJ8qqV5TzwZQzMkmMcJKeSKm0Pj+gVJlE+PK6faCoL3D6A5/aBIdNrzAnK
         +jyrzmvHdWrOuTXUViA0zkKIe1TAKLxh8/7QRJ6PyltMyZzw2fZ55JOc92P9kV9+oTCe
         zlBaN1QAHx8vPYD6i5jIUknXT+yXGkbCSaEcZ8NXox49iLr96zrmPHr0upDDxxTm6Pk7
         I1uDXVtRcnSp6Cj5dk85l6tgvnfq/BQ1PS7Oir6UVhuF/yfQKHYYDeybhwU7vgCKyStl
         yezFmw9L5EgAW4G7mt46q1YJLFXQfi8QjSRKR6YamLVnWazGjb3dBMD6JBUGEnk8zsC6
         OfQA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=f1U1+D3y;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=GNLpX+U7;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1694811328; x=1695416128; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i63spSgF0BrS35R5CpYPHWeMShpw4lvBA0bQp+un6hg=;
        b=jw7Lk6CLHu5f6DrxGCvzqrLudMXfzh4zoFm0RDf5hRPnlU3VQ8nwrPBtRRjxN9c+Mo
         stWKDPfO567V3kfi+bRpzkL+RnD0/Q9CjGTwO9HHsp43u9hytYWKCD/f9MhChkSy93d/
         8TQpJCjH6eG4Ri3vwlltL9ykyo1JrxS/Smx+4VC1Aez0tIlPvSE8+1I5w78zZhfCSURl
         ioF0Gt4Bweaz7cxUeT8znlFxok/yVlMqB/eOEMAHSZHOfMwjSlmMuPYL40hQZjtzVqr9
         v+azwfjPdDKPMgmaWzd3gnlxWnItpX2H5KhuG9QSSlz+UkB27HufFKcUIiNFSGMzfyf2
         5e7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694811328; x=1695416128;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i63spSgF0BrS35R5CpYPHWeMShpw4lvBA0bQp+un6hg=;
        b=s91cgEK25qofblAi0VJpsUPFKU2waIJCtAq4cXS5B6zAtKs3pSIYAgHlqtSnZM2VZr
         ZX+DuH+FtrV9dbZME3WWoPEhBbJoMXqiQvMyHlAhm9rlO4EwY9nTIwF+7gU5sr4ZSZ4O
         Jb2LBWlFy5ebKTmkDinKNUxd8/dVqLt0ZxMrL/vpT5MefBa3iHJKvsx2oaKNMczQ/6+R
         CQjawPHPpIcdkYx9jtN/niLM1+MBaV0C9ctE0T2nrtHCRgQ25DklRnnYWghqAqUAtOoG
         VDIwrpObwCeHY0aOzsGVxt6AXK2g/fdB3ns9qmHQOdfJRzLFJmBVtJ7k/Mux6YNe+Zrt
         dxBg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0YyuLtLWVyPqlVA+SW294P32tXrZ0/IBy8vp/JGgNqLdT7Npf/wZ
	e5HGCjRLtDvIpokTK5EUvV/J1Q==
X-Google-Smtp-Source: AGHT+IGkexbKKGiuLEqLuZWeCI8WxdOrwfNIGzsbtsTZ5NvPvLN1awzqldsiti1ecBi6LRO6Q8F9gQ==
X-Received: by 2002:a17:902:d486:b0:1c3:e130:18f1 with SMTP id c6-20020a170902d48600b001c3e13018f1mr2958632plg.20.1694811327641;
        Fri, 15 Sep 2023 13:55:27 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:903:11d2:b0:1c4:a11:f344 with SMTP id
 q18-20020a17090311d200b001c40a11f344ls1246928plh.0.-pod-prod-07-us; Fri, 15
 Sep 2023 13:55:24 -0700 (PDT)
X-Received: by 2002:a17:902:e852:b0:1b9:e937:9763 with SMTP id t18-20020a170902e85200b001b9e9379763mr3386184plg.12.1694811324235;
        Fri, 15 Sep 2023 13:55:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1694811324; cv=pass;
        d=google.com; s=arc-20160816;
        b=wD4WhjvOmutWISYeDgHUai/+JD/vRgzoOJMAt7oR1LU48ZGgRKU1PwRWG2Iv5pEJYa
         H92w2cz1shuHBVWfHjWZnJ3ownmOG7keZiuojbE3Gv+8D3Y/FQFl/IVSLXptiVZRL4tE
         iC6CKfMD3d6538HCrmW2YHsWqCa8VXBaZhep0IozU07+q0wIM26aOBhe3Ew6ZLW1EPms
         WCFzM9PUOmhHeeZUWYEU4l0j2MDBmpX1I521+TjH+aMgpJbq8LDW2O7qXCGNUmXEmKxd
         7znj/+VSPuWLSKVApS84SAbdIc8iECqk5I6JLpmgsE2cx3/jpEHVXP+BzV3qLr0bzZO1
         ZJsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=+obZE1CkbmmqQGNq8pXlFR9LWdPlQ5//56SPa+berfU=;
        fh=k1jeTuCRZxH7IGA2qb/t+jbj64wKYRvkRbEo7HiOPoQ=;
        b=N9T2Ek+t59CAkWBrLMjnom4cF3xYiywbUDHBZEsG+gg1RGv3rUO1apQI4UQAX0lMGq
         P7Bn4AQNSKMXXQqOq7v6C4ojJjTLmO6qcahDkRsqe6y8GikPbx5Q16aCRPJHTQNUiATE
         akxEEVuXi69VwzCiogDDXIpKtmQUwkLN0zffghS3Htlh/GrLVuZxCaDtt/iYdiKdHqN7
         SrISAA0VAEEMiyRwZoYE2yU2925/BRHWwSGXvLS98VnvFWt4xKtPOVdyIaMSRRj/CT8S
         lejZqtED4E/SLhoeNX1uG+eBfQf7z6NDVi2oybn4SqpNBNH3q45g//ip+ZeWPUkHDVA/
         344g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=f1U1+D3y;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=GNLpX+U7;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id o11-20020a170903210b00b001c3523b5577si438570ple.0.2023.09.15.13.55.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2023 13:55:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38FIf2xY018262;
	Fri, 15 Sep 2023 20:55:12 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3t2y9m0ju2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 15 Sep 2023 20:55:12 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 38FKWF07028148;
	Fri, 15 Sep 2023 20:55:11 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2169.outbound.protection.outlook.com [104.47.59.169])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3t0f5gw85b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 15 Sep 2023 20:55:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oT/S1dcxL2F+QqzMtICeaeY56G1XDAlf57Z/hCu1fNJWPjmjWQ0LH5dsir3p7yjgeQy5gGE6Rr4TA5IQgAnRi9/gmm30qpb/hQyFq2909b9Y20PCboi6HVOBym4VkCd1vxW0wkPLRBu0LVCUVMoDf6Q5lQOmZsPI93Byc3fDj9v/zwr21DgCCtBB7EBHXTsl9Kbp15cNbwKXICCSnhj1XQxOVnUzuADvr2l0kOXhicIUYCNOFmBhGnuLGsd1WRlAabdzMi5/XxIfLzc1VZTDGK4auhcxnGkBKILBJ8xq2ifjVPw6e69YRPGemtsDAW/Ur8+KOqwj8FE50S2lJ9pBTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+obZE1CkbmmqQGNq8pXlFR9LWdPlQ5//56SPa+berfU=;
 b=DH4QR1+SssPbsBgJM8ipKA5IUmi8GNE9/mG2hF3hVGg3vSTOoglJ1LF1MMBcSdj72ajfysNHRKiKTLPL7g/reffgGjH7/vxoO5Gu8zRdh+nGaHOwaOqxjKccuSDhPbjheJLhbDtLm4eprKt9X+/jwsYe7vMtB09BqVVyMzdw0urf7lsboWrPSNBGhOGXeA5LPVlfRcm26j/VT4SW3ZY2tOoXhjMQVVky2W5t4DuUVOyQNDFTRAoAQPfKsyyPw/L1TbWJ0IM2PhPY9qI8ZlE3RdrRBESAcLgScoVCSWhPuf0taIF4CHXlcC3GJeKuXt4vHVBjFpGmXqTE9eG9Fs4keQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY8PR10MB7243.namprd10.prod.outlook.com (2603:10b6:930:7c::10)
 by LV8PR10MB7845.namprd10.prod.outlook.com (2603:10b6:408:1e5::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 15 Sep
 2023 20:55:08 +0000
Received: from CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::2a3e:cf81:52db:a66a]) by CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::2a3e:cf81:52db:a66a%4]) with mapi id 15.20.6768.029; Fri, 15 Sep 2023
 20:55:08 +0000
Message-ID: <ac3eb485-18be-4fcd-b0d4-8370aa64f38a@oracle.com>
Date: Fri, 15 Sep 2023 15:55:06 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] scsi: iscsi_tcp: restrict to TCP sockets
Content-Language: en-US
To: Eric Dumazet <edumazet@google.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, netdev@vger.kernel.org,
        Eric Dumazet <eric.dumazet@gmail.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
References: <20230915171111.4057930-1-edumazet@google.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20230915171111.4057930-1-edumazet@google.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DM6PR18CA0019.namprd18.prod.outlook.com
 (2603:10b6:5:15b::32) To CY8PR10MB7243.namprd10.prod.outlook.com
 (2603:10b6:930:7c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR10MB7243:EE_|LV8PR10MB7845:EE_
X-MS-Office365-Filtering-Correlation-Id: 844f9102-a49c-4b98-dd26-08dbb62e0ba2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aEaKDf4jlsfFxn5s40N+VujpjlHabMVppxElX4EqzaGAF4OD2Xax8+hYoEWwH6C6Qw8OyYoHYSlJEb18BYD0ijVclxiPP+HlGHwXG7RAYqs7DyYpftrR0EmYTx1u9Avj9ry2SsbLyODW6t8QfnWrA06ooeXMHdRpuBdAc/9oSMadySA2Ur1bcdN1YHsvsuko52xa3EmYCEJnHdCitlTTbHRcFVikUdVXs5cQeBPJ72O9bJYKFQJK6LZ/6JrYpbHQlC22g7tXtqITQXqksAINdwm63yAlObyl/JXvWNe9SUe5nOjD6l5bGLdctHMBAsOg/EPfOoWrr7Hp1J0r5X89/ylH0WgePqGsk3lifz7I71TwcW+DZQSg4M+MN43lGR/HIrByGjK48bsDKHMGnJrFIx7ZIde1YLynnhBbbzXdXsVt3/KoGl+Q/wHHnvKrx9SQhZrmeMe1PcelDy+MIP8AnGL+O/wn/5OhVYgGs7/Ajay1WGp1Eysr42RGRZ3z9eW+IPRpLIhZlSIYPsNULj6o8GQvoVrzRil9oDbY6708lhImzZnvJ+D0zTEdx91lH/1Tz0BCn0kpWUlJPk0Wp1hpjnAds5ZV0GTEXYPPta6+fuzmqfBafTPH2AXmuc0+Lsf+KUSYSMNHp4xTA0kgupKNlA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR10MB7243.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(39860400002)(346002)(396003)(366004)(136003)(186009)(451199024)(1800799009)(38100700002)(558084003)(86362001)(31696002)(36756003)(2906002)(6506007)(53546011)(110136005)(478600001)(4326008)(8936002)(41300700001)(66476007)(31686004)(5660300002)(66946007)(316002)(6486002)(66556008)(54906003)(8676002)(6512007)(26005)(2616005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bE5KWVlKY2tXbkM5REEwYjdDbGo2cmxaNUpMOUJYaXZvZ09GTDBpZjBuMWVj?=
 =?utf-8?B?cUd6NnhReDFZOGNlZ1ZvU3prdmNHeWE4MEdNM3NhWWh1aGxGb1prdmFCbzBU?=
 =?utf-8?B?VXlvcWdOK1psZEdkYkVWcVdvM010NFBwdEljWGc1b0czbFBlV2kzMmI4OEFv?=
 =?utf-8?B?ZEczdzEwSyt0dm9wMlY1b0pJK1BQeE9PWERCdThIS0dVMzhDcnhCOUVIOGIw?=
 =?utf-8?B?UDNEb0Y3Yjduc2VEYmJWK0EvR0FjV2o4YzFQYklxaEtkbnRrejNjUkFtazZ2?=
 =?utf-8?B?R0FRL2x2WTR4M2kzZGl6YXZyNm52ZXduRTBsZ2dsZGVkdjF1dHh1K3QyWUJ5?=
 =?utf-8?B?R2p6dFNjWlRVTDdPOE5iTWpKZGVWMzMzcmYxR2tac3pJMWV2eVp3R2NTeGtu?=
 =?utf-8?B?ZUVFYUZodHE1TWVWdnAvRnUyUUFDN0VCTE9QbWFyOGgwTUMxODNMd3YrNGFr?=
 =?utf-8?B?T1pCbXF0d0tLOFAyU2FQM2wzV1RGTW9uMlJLV2hjcjZvQlVDUkYzRUUzcWFv?=
 =?utf-8?B?Rk5jQ2tlRG1BVE9ucFBVS0U2bGdVVEVOV0xmdU9hZUxaOElDZWY2dnl4MXd3?=
 =?utf-8?B?bnBJRUZXWVlaMjI5RjVTU1R2Rks4d3FmZEhvbjQyUHJWdSs0aEwwOTB6ZU4v?=
 =?utf-8?B?OHJYMzBsVERtNFBoc2tMbWExUnNYUTcxRzZUSk5Xbk9yUkpENXlyekVKWlZQ?=
 =?utf-8?B?M2NTcUhFSnhmbythaUE3Mzh1TUV2ZDFRZzBYaGpMMUhreWNsVFR3S1d2T3I4?=
 =?utf-8?B?VTZtb0dPYVZmczZ4V1NGaDQrcjVCemRRaGhJbnBPZ1NST3NXZ1lXSVhTZW5w?=
 =?utf-8?B?TFNoVFFmVm9SQ2paMTZoMzlFaitXajJyVzRKWk1kQzdJcE1WdE9jRmtRYWk4?=
 =?utf-8?B?S2tCblBlRGR2bklwNG9RNUVBSE9NYkFRVjE5TTltMW01NkU3dzNCUkVxeGZ2?=
 =?utf-8?B?MWFqbmNacnFudFVCNlJ2UlV1ZzhOeW5tVUI0ZW5Sd1dZaysyVnlvZFU2MG1X?=
 =?utf-8?B?bTlhSUEvQlBUcDg4VWxNV1FZaGorQWRaYUVCRzNjSmtSbkUzNFF4aHM3WWRI?=
 =?utf-8?B?cGhjb0hiNFNXZUt2cklFMXVtZ1RocGZZbTh4ckt6U1ZYUWtwUlo5ZTFyLzdm?=
 =?utf-8?B?TW4zUTNlSWVTUlI5enlrZVpFcDdqcUE5cld0WFlzVktoUWdBNlFUS3piem16?=
 =?utf-8?B?bGliaGtWVm81SU9WT2NvMmxzbXF4V003eXVSZ2owejEvVEFwVC9DZFEwOFIz?=
 =?utf-8?B?QTFjbDVZditJZEJQMUM4aFdyRGM2L3pZRGZGMlppNE9teDNwZ045Y2tnS0FJ?=
 =?utf-8?B?ZmpqdjVvTFdjOFZGU3lOWFhMaXFtY2FuQU1NenZaN1JTQTZHSEdRVFhXVFJO?=
 =?utf-8?B?NmdpWXlPMTFJL1Q3NDhJT3RjREFZUHhJaElwRXZMbjRlS2FxeHREVDkveTZq?=
 =?utf-8?B?aUZUTERaMXljV2R1MVZsR2ZHNi9KTWY1U3VNSlBkNXIwUnptMTZ2NHdqQ202?=
 =?utf-8?B?cUFSZEtyVTVSeDZhMGFUZm0rdWUzbkUvd1ZwZTVBNHduNFl2ZDNWVVg4Qmtu?=
 =?utf-8?B?L1NXODlCTDhoQ0NIb1ZZTkdKLzRmYTlucmN1QnN5Q2R6d0FZS01qRWFvdUZ1?=
 =?utf-8?B?aDBIZ2JOVGJBUkNYREJQKzdhNnE2ZlJaMjVNSlNaWjBRdk9OWWF1NEkyS1dO?=
 =?utf-8?B?VlZUbmZKUWxLRnlCY05vdjJmcUNCclJSeFVpdEM1eFZiZzZGZElQZ1dVYjZs?=
 =?utf-8?B?dzVUTTg4anJISk16ZFpwOHppUVF5ekZWYUVyTEh1aTgvOWQ0bmZranVIYkVt?=
 =?utf-8?B?VXdvY2JJRFZxdnUwQklIK2JiR3VlOVJnU1I3Q2E3ZG80RHhtdW9TWUxuRmIv?=
 =?utf-8?B?bWJ4RkRrQmtBUmdYOEVLdDhKY2Zxb01VUUhBWEdTL3B1cHQzLzQ2SDNKTXRU?=
 =?utf-8?B?Q3R1Ky80bHQwQVBaMFF0SXBDRDhyVlMrWXQ4MFQza084UmhyV3NvaEtCUHBX?=
 =?utf-8?B?NHY3UGtOQkhMcVo1UTZma1IrRHZDK0gxMXMvWUFWNVo4WE1hNDNOdzl3ajVS?=
 =?utf-8?B?dm9Oc0JlWkdTbW8wV096VFlBTWYxVUI1OVcwN01Fb1ZMWXlKQWc5aFFCYVc4?=
 =?utf-8?B?Wi9qcWdiRkJqaUF2YTBMRlV5QmtnTG0yOTAvTnI0YzFxb0ROekp6ZGsyeXdC?=
 =?utf-8?B?a2c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?M21xcnA5UEhSdUQ1L0R6WjVKazVxRTFsSHhxWWZibWdOVVQ1TVdsc2lrL09W?=
 =?utf-8?B?SG1JUEFDVnFBdDRZRTF5QytkWWw1ZDFOM2ZjVVN5L05ibGVWdlZwemtUaUt6?=
 =?utf-8?B?UXFJRjhIQjBObnFNQ1pzY1VrUGlmOVhBNU1SRU1ERWRoNWhuRTJuLzlManhu?=
 =?utf-8?B?cVBEK0RjM1l3blB6WVBpcHFkeHJZbXQxeGRtUW9vTGg4a0FXS3ZZRC9KVXVa?=
 =?utf-8?B?K0hDeG03MnFJeVlYVzVhR0oweDJVRnlqdDZUWnExQnJxbEsxdUJYYkFyN0Zx?=
 =?utf-8?B?YTlEYlBBV0RMaCtxY3VpaVQwY1JrelRrSUNGYTZiNUZ1OUhNOHhZaGpwa2tB?=
 =?utf-8?B?TDlZNHdxcERVZDEwNS9vR3FzcXMwLzhHZzhVZCt3NFJJSGJyNmM0S3g5akwr?=
 =?utf-8?B?cEEvZkYzV2p3L2RrWWJmMWRoVHlQaWN6MG1MYVpsUzlFVEZ1V1lyVFFjOFFa?=
 =?utf-8?B?TXFaZmZONUF1cWxEZkI1dkNxZVBydmNoaEtYTEhzZVZ1SERqdnV1ak10dVhO?=
 =?utf-8?B?MElLR09ycWkvRmx3Zk51citUMHRpemwzOVJsL1VTblJNV3hjZnVpamhGZHJ1?=
 =?utf-8?B?SkZjUm5kbDROakpuSmVUU0VuZGdtYmZNWnd4QVJleWdWQ1E2WExTa1d6b0tn?=
 =?utf-8?B?blNQZkRlVGVjSzE0OU14MHRhcjN5dkVENkRqblJYNit0Ymd1b2lOVSt3UXdv?=
 =?utf-8?B?ZUdFMFp1b0lFVzhkZ1NFSExjTFdFTnA1WkNzMXF6MUVBNk5ZdDFqTGQxZ1RF?=
 =?utf-8?B?MTUrdUF5OGU0dmRRZnB3aWUycGwzYWJLdUt6c044eXBWMVd4SjZIS1JDVFF4?=
 =?utf-8?B?R0Rvc3FRYkdua042VVZMb0c5ZTNWLzBTcXAwMHEwc25WcHI4MktpdzdtZjNZ?=
 =?utf-8?B?REZlNWtQMzBrVlV0R0Rjalh2S1cvWDlZa0MwRExaSWJHamZlRml5VkRMbGJD?=
 =?utf-8?B?SGowUTdHQjltdFdUVkZCQk9KaVFHT0E4UjBxVkhMTGZReE1RN3Y4eWlobE9s?=
 =?utf-8?B?MWhyYU1sWjlMMEpsekwvT2dyRFZDTWxiWVB3RU5BbUg4b1hERHVLbFBGRFNm?=
 =?utf-8?B?emIwWjZoU2xRTExsdGZDcGtvUDFQZ1ZBcDFEdlErNVVPZDZwNE9ydng5V1hh?=
 =?utf-8?B?Vk5HdUlaUndnN0pwVG1icDN6VEdYbzE2N1RpMjlqWStJZWJUbXdoT1RUYmEx?=
 =?utf-8?B?UVNraGg0QkFBbTFoMjdFTDRYR1V0LzExU3FoYzVhR3YwUVJtRy9zZTZnTGdj?=
 =?utf-8?B?RUFDUW9IL212blNHK1hXZmpKVjRPNHZXa3BRaTF6Q0QwSjVYQT09?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 844f9102-a49c-4b98-dd26-08dbb62e0ba2
X-MS-Exchange-CrossTenant-AuthSource: CY8PR10MB7243.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2023 20:55:08.4976
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uv/c7XNTCDNc4dMvv2R4U1o4uRX/fy+dt/nA00Ak4Qr9axJ+oA/ZyXYQCtx5vPB+TrnoWw4J3B1wSE4+0xkNoVAHXquWudC+wMzat6pCdPI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR10MB7845
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-15_17,2023-09-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 malwarescore=0
 mlxlogscore=999 mlxscore=0 spamscore=0 adultscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309150187
X-Proofpoint-GUID: 6KUJq2CcFeifZdbNjvCEQJdZjoWGIR9J
X-Proofpoint-ORIG-GUID: 6KUJq2CcFeifZdbNjvCEQJdZjoWGIR9J
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-03-30 header.b=f1U1+D3y;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=GNLpX+U7;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 9/15/23 12:11 PM, Eric Dumazet wrote:
> Nothing prevents iscsi_sw_tcp_conn_bind() to receive file descriptor
> pointing to non TCP socket (af_unix for example).
> 
> Return -EINVAL if this is attempted, instead of crashing the kernel.
> 

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ac3eb485-18be-4fcd-b0d4-8370aa64f38a%40oracle.com.
