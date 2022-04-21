Return-Path: <open-iscsi+bncBD54HHNYIIINXBMGSMDBUBBHNCE4U@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 497FC50A50E
	for <lists+open-iscsi@lfdr.de>; Thu, 21 Apr 2022 18:14:21 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id n4-20020a1ca404000000b00392b49c7ae3sf1102818wme.3
        for <lists+open-iscsi@lfdr.de>; Thu, 21 Apr 2022 09:14:21 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1650557661; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z9madA8VAnJ28LCHKF8lkabNZo7ZcQ0JjvomOisFEZGJq17yE3sSpdeh/wz9tfvbTt
         v7Spm7ASPxex9tkgF5pvOatVKJgdtMf0xXiY4jyFIetGu/+al+OotqF2hCpFH7We6Yjh
         cE/vqfnM+0Nd0DRV6DyFXUUdSsB9OMd3YG/q8DAphH+GTb8FqXB2kocTOdbe/gcfacNT
         XkhdyDL72C01EIVs3HTnHaLmzhdDMyPHcHLFcUrMIU/juNZbTUDfDrSpHf8Ncm9S3QL/
         w2L+o1+JdK4ZMBFvwGENY2zawWpxEuFwi18IJi9oEt92WEhY2+mEqCmkl0tQe6RYzYOk
         6LxA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:dkim-signature;
        bh=5hz/o/mPuD99CHLizwNDjWtP/R1ImwgRJSz9lqIBPTA=;
        b=M4kuni+CMg2ctLVNiZ8xj5ZDB4iU8u7fpH1pIk4f/a4644eDvIY0H/wYwiDCQtrjhZ
         sDVJzJs5g7oJdhZdCUlLNH/rCXXu/OaIbMScy7tWqjx59WN2d60CQpQLVZn13Vz0UI20
         hTvE2CSUxsbtu49+XSxDgR3YobmLmt7eV8PdE8y1qXDjqFL09ene7OFD/NCWhJ+zwFsr
         6MMu+QIbXeSASP48MJq88mWNfgw1INJf2sA/YT8+AB7BHlhP6UusuTqJ6JAlP+cE2Hwz
         e+1KL9vN1gy4RbOJPnI8icjbiAMk2w9baf6jV4biI/ZAkNdKybpjL5zfF78BMLouYgof
         EwxQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b="a/dowdXI";
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 194.104.109.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5hz/o/mPuD99CHLizwNDjWtP/R1ImwgRJSz9lqIBPTA=;
        b=cmHmZK8YQXtrvobDuBAXVRxLbIF7UnHi3r0Xv+RYIgA263HJn8JCV2INoknbELqGYj
         0rKjnISJcOE+4Otw2ET6NLJNZLgA3EQ/J/RjSbtTAhqAFdiF5zK4J9guLt+8KmVUu0vQ
         jZuB1m7/7ZZJSAV1SfO2hX5RTT7VwPIQmX7PJZoLr7Qkvg/qAwc8jteipJM0w4kwMEq/
         zunFrqR2QWic/p0WUrR/2IlONu3n2VnGrhFRvJzuIebvVmv76z0F0pRJ1sWoUys5j1/Y
         f2kpEhzFkpi1X5jyuWsS/747HIMtfmzW7cDc2db5iRJusAoAilqZCVjjvBVGDMtwIBbZ
         Pz/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5hz/o/mPuD99CHLizwNDjWtP/R1ImwgRJSz9lqIBPTA=;
        b=g5XslaNvY5U/lDeA0/UDJo2+C8k0j/m7dg3GD4RQuFYZzsL6R6w22KwMT8rbBgjayy
         d2cR8VTkMAf/tN6Qc+9y2MSCg2JB9VFEZKbzbq2llSGXqfCsEjrJ1bXJ92m9d6hKT0Sw
         icS/YPHXD23ODIs/VzQGO3rNW9yQojUGwAx5xSY3zEnOBpnJkrHUS0LWfDaUa3hHBoCm
         rdUnz7hpPgm86HxFGfh6shM0I3FjjVGEeNNthEy2sTiT2CPdd8/zqKwOLO9y3bzAyW5q
         +6/UBsBrwRFXP+rpaUr7fC1ZVpy+DpSrHMRO6qULqCBUAGCgrDNC1IpmX+ktFtL8y4Ic
         CSHQ==
X-Gm-Message-State: AOAM531fTeEgUW9yW8JZcwPGXKZ33IBiIZW589bI4Q7t4fwe6JIFRRiJ
	hYHfKVmJZAboMAhI1cgAjzM=
X-Google-Smtp-Source: ABdhPJzq3Vv2Nnpq7LGObMsCs/A51o5DIv2bMKoYTMCpbqTUThtn310MJ7e+15KRGe6dS/qMK/4h2g==
X-Received: by 2002:a7b:c4d1:0:b0:38e:c1a7:c796 with SMTP id g17-20020a7bc4d1000000b0038ec1a7c796mr9315081wmk.150.1650557660881;
        Thu, 21 Apr 2022 09:14:20 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:3b1f:b0:38e:bc4d:7a68 with SMTP id
 m31-20020a05600c3b1f00b0038ebc4d7a68ls2939195wms.2.gmail; Thu, 21 Apr 2022
 09:14:18 -0700 (PDT)
X-Received: by 2002:a05:600c:a45:b0:346:5e67:cd54 with SMTP id c5-20020a05600c0a4500b003465e67cd54mr9436127wmq.127.1650557658802;
        Thu, 21 Apr 2022 09:14:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650557658; cv=pass;
        d=google.com; s=arc-20160816;
        b=bziaQYidXideukG25Wvvel98tTv5tdMJ2uDr1LafGdILPiDq1PYuGhNuARaxl+EJdJ
         MrAOrVnHgtBbd5PBgufpQ8mPA2W9gcD4i+chLm9KErGfxNGgW7zX9C57ZSzPH2AdWaVM
         XRhk7AKlBZBArR1/qljk9h1SLq8P/976YfnF5qJ6gZI4Kerfg2wAv1ad83OCHBcGMLp2
         p/jlyoMBwQWT/Be0XwUTH1al3WK4z/QG7MgoZ+ioNjj38VWMyRK74UuRZRjb/1H0QlpN
         ScAyI8bWJyI8ud9BVs1aqYRrQ26+w9ZmIgc34o48X/V74qBkefATx6WHZpPQWdsh70Ux
         pHuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature;
        bh=3jFuuRcMOWARClLbPYeAu1kEse383mNkSyTKJ0u8lhY=;
        b=qUdpWKRBooB1+HJdvu6fi6XQMGLP1TU5wS4d+2n+8fPjPut/JtmHm9bHQyezG1/mKM
         o1gb1b18ffudCweOwS5Aol/K812ZwOwiZXE07IuaydYQrbT/5mcfNJbk9pLSdzXdxAw3
         4dNrx8rW+ktLGY1BToRxsPf646Jo1YociJDJZiJrkO/5uQi+I8TOv/Yx3m+VeeGi/eUj
         nJ8/it2fvwCFWjfjtHK7SuJx7R013EgdyXmvZadw2SI2MjA3+ZP+vrdeiPtnkJqMFnXN
         tkfXMGJ61hZTe3ybwhGgY1MmanUp6tMnWr7BpcKVY/SmcrlpwhHpox0T9J7nC+N1uVVl
         mS3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b="a/dowdXI";
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 194.104.109.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from de-smtp-delivery-102.mimecast.com (de-smtp-delivery-102.mimecast.com. [194.104.109.102])
        by gmr-mx.google.com with ESMTPS id k9-20020a05600c1c8900b0038cac42709csi145688wms.1.2022.04.21.09.14.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Apr 2022 09:14:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 194.104.109.102 as permitted sender) client-ip=194.104.109.102;
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur04lp2050.outbound.protection.outlook.com [104.47.14.50]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-5-L3uMhAvUOK2Xzmg7qUa8Hw-1; Thu, 21 Apr 2022 18:14:15 +0200
X-MC-Unique: L3uMhAvUOK2Xzmg7qUa8Hw-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YK0zqrBp2K4CW673Z8VqeK0Vh5M0wEO3ezAAOUVlN5f+BM+Ic9EOvUoW7ucFh1Ac49nwOV5Lwo8V05McpFy7ZgfJsE9VrvftT86/byFXLEDhHG31uRxfr+t6dw3q43qxQwIOleenfNiXvNT8oWEN2TT2SQk+ZE9iDjeSAVCU5nGRGna6CkLsCGfMsC5wvUvDIIZ9BJhpFdlaiBIeqDHLLwoIRyOEnuyAFEXxa3xFf4vbEq5nT/HTOtlqOU/yrJLQsXZx60mbWOZmIs6i0Hn6XsJUO7JgK2XjWN3NtKzMXvEzoFkGNGC/z9WZ3xbbxJUb/zPbTJLWC5k1FYl88uN6iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3jFuuRcMOWARClLbPYeAu1kEse383mNkSyTKJ0u8lhY=;
 b=LaX9btRLzZ0gZh86dUsVdkjgCgesj5A5LkzxZBVEOZlDYSqI86GZ5OER29LvosNiV7J9EDpKHUbRhEHvV5exEFQZxUu/irDrPqH+AxJTWKLkLCKU0LS+Spa8dyi1RkHBAi7B06HGVfqHGlgRUqLX/9p7TKbaFe92t9Nmn4UaHRF15IVtypo/5YK1+wRD+lqHuFfNGCuIOPL/6hPoldwOODd0X4U4MpsPd0Hwy5oVzvJcV1YIraOEaSD5tpWT1w9GrizhleHrXX2M0/E18bHi+72RGfFDcl36FQo1oTHrjOkpBaWpiiIR1uoclBmL7PeVPqOOvBJ3+Z8ZGeN3p0qSKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from HE1PR04MB3098.eurprd04.prod.outlook.com (2603:10a6:7:20::28) by
 VI1PR04MB5104.eurprd04.prod.outlook.com (2603:10a6:803:5a::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5186.14; Thu, 21 Apr 2022 16:14:13 +0000
Received: from HE1PR04MB3098.eurprd04.prod.outlook.com
 ([fe80::c5c8:ad82:8f82:2a3e]) by HE1PR04MB3098.eurprd04.prod.outlook.com
 ([fe80::c5c8:ad82:8f82:2a3e%5]) with mapi id 15.20.5186.013; Thu, 21 Apr 2022
 16:14:13 +0000
Message-ID: <b4e1edb5-ff1d-2215-611b-0bc778f1c7a9@suse.com>
Date: Thu, 21 Apr 2022 09:14:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH] scsi: iscsi: fix harmless double shift bug
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Mike Christie <michael.christie@oracle.com>
Cc: Chris Leech <cleech@redhat.com>, "James E.J. Bottomley"
 <jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
 kernel-janitors@vger.kernel.org
References: <YmFyWHf8nrrx+SHa@kili>
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <YmFyWHf8nrrx+SHa@kili>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: AS9PR04CA0121.eurprd04.prod.outlook.com
 (2603:10a6:20b:531::26) To HE1PR04MB3098.eurprd04.prod.outlook.com
 (2603:10a6:7:20::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: af3ca721-b5e0-44c9-afff-08da23b1f9bf
X-MS-TrafficTypeDiagnostic: VI1PR04MB5104:EE_
X-Microsoft-Antispam-PRVS: <VI1PR04MB51047E442792D9FBE7616559DAF49@VI1PR04MB5104.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pCLPOnz7Glkf7teAxE4VXm6qFbD/EU2xMuHU4uaAW3OidyvaGLU+bJlrNEXBV18+XSa3QacDE8GvQbFVv4lZJaaRZQd2D48g9NQyyQ7/DW//dTYhx1B2ItumoLMqNFNyA2aegQY6mapdJFL8MyPpeG5WetAjqZKt1ZeizwKol4yWssDNdej48gNj3Ry8rgvUytduqDQmTthx32ZMP4lSpZMXpcqFrKVvg+oMm091idvzMqi2DXJP28eGigdsqhx7U8y9OAh6XtcdPGytyRXKtP/cqxx35asFyq3mAX30wwTsL38ZMxlv1jUnSezUpFtLOS2VLPTBiQJ4BXHlkDuRj1vOkkoPDEylw2ov/J9Sgb2270h44JYm0jiIhqsw3RgpK0OLkbi4AwKBGROuxANf6AV60DstC8LQlWTWcQp3/yMDuRmeAcdo4gPeCocoSqU+VTnslbWb/Rb7eHn5wdsqTPLH1Taa0BuDATd340gca9nsaefbblU0L9eQIG6mijkmv3dRfNZe45tIeQ7VEM8NDHEt6Mr9kGVZUoTR+mkNzlFJqHTUX2P7G9Tr51lcfQAgiEIjf/oS4pj8aWoyKLOijCWPbu1e2aicNneHurK661a+rUKUWP894Hdb9LBSivI7djnE5cwr5B1003zYKWaaFW04FcVOQ/UIaOFBl8WuxLAjCc+F6osvYz3X0bvum+ET70Axd4s/DiCnb3+26anA0KIAUoZR4f/stoikrWpfQhE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR04MB3098.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(316002)(6512007)(36756003)(66946007)(4326008)(8676002)(31686004)(110136005)(66476007)(54906003)(66556008)(2616005)(53546011)(6506007)(5660300002)(38100700002)(83380400001)(2906002)(508600001)(86362001)(6486002)(186003)(31696002)(26005)(6666004)(8936002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFc2Nk0vOHZvOGhDL2pXRmhEZXRuenlNT1krVkdlL1MyRUp4bzJieldQbUFL?=
 =?utf-8?B?OUxLNHhwTVo0Qk1CNGhuRkJ0OUs5aDJ2SzFBbS9kd1hJbE1Rb0Jqc2gxZG9R?=
 =?utf-8?B?Tmlab1dqaTdIS3B4YzVKQ1JiWnMyOXM1V1h6ZlVEd3Z5U0Z3bEhCL0xPOFRB?=
 =?utf-8?B?bHRFaTA4WWJEY1JsU3Zxem9DWkw0dnJYN1piaU82bDVORU9jK2plWklQanpy?=
 =?utf-8?B?T29SSlFqRlNzUzFQRUxEbmUwb3J1VjZjR1VqUkhwaWJtU1dvWmViSDk5cm5V?=
 =?utf-8?B?NjhiMk5nSklsYlRjYUpxU1RXa1VRTUVTMGI2TjhpSnljTlJKZXpuNzVpWS9S?=
 =?utf-8?B?Sk9WSXFDcGJ6eDFSWHhXYWt3cVBabGlWZlhUTE5aci9nZDZET3lwMmMrY0kw?=
 =?utf-8?B?OUdmVDZYTFROazZXNml4RkRlWjZzVTdtdkJqc1ZjQkVCNG1LT2tyanNkaGsw?=
 =?utf-8?B?bkJtZFRIUGRuUjdZZzNCdXkxTWNlZTRnZXNNZmpCTSt2WCtMRmJVRDY2MEYx?=
 =?utf-8?B?MjF1QzZzL0xVVTRZVzdmcUtxeXhKZVd1ZXF5SlB4R3VvVW1LUkpHNDQ5elAz?=
 =?utf-8?B?NFNBd0JLTWo5K3NFWTgzc214cWlBZXh6b2c3VVNUMHRNTTc5Y29VbjJYMElp?=
 =?utf-8?B?elVjOFB5a1FMbTNacHkycXhWbmZadUNydnZEWDJWWXUvcXRrM3I5a2ZFWW5Z?=
 =?utf-8?B?VURvWlRKMUV0VTFkWmx4Umd4aWVCKzlmNHUvWTJaYzNpZFl0ajNRaXl2Tjl6?=
 =?utf-8?B?dWtmTGxpYlZIZXZYK1N5ZExKdlNNMzZmaFJuMmMzRlE1ZHEyc0NmUXlFSWtY?=
 =?utf-8?B?TnpFcTh1NTdodjROYU1HVmplVEtXYXV0cmxXQU5oNVJZNUZ5WGt3djZaOFhm?=
 =?utf-8?B?QXYrUXNGTlRDdytGN29tUW42MVpCZlA0WTk0ajhXdUE2dkNlbGNpazJZNk8y?=
 =?utf-8?B?ZjZyd05GUm14aVUrZHhuM0FyT25yMlE1U2ZSelBLU0FBdWtZSndMWDBTbFo3?=
 =?utf-8?B?U2VNMERSZlFSRkpRUGdMRzNaVURLWFU2L0hRVFlWM2VDZC9lWWwyN3hEQVc5?=
 =?utf-8?B?Und3ZnFrNDZ2R1NLL1NUcWQxZHhLTXNUM3BIcklWeGx2VUc0aHQxSWd1YXdu?=
 =?utf-8?B?TGlZL2JNcmFOZzVZRjJOM1g4NzVWMS9OZkxuQWg4c1JPekJXZkx3V2NIK1Ry?=
 =?utf-8?B?Y2libUdOdzJvZGQxRU1CREplTEtUcE04ZTJyNVJXMFhZZ0U1RnBzekorbHdx?=
 =?utf-8?B?c2x2TVpFMHU2T0dTSURQSU91bXZpSytnbUdYZ1IxY3UzUndocjhoQzNrdlBQ?=
 =?utf-8?B?SjVPdEFwTzFrK3pxTURXYXhCakloWWMybStMVURpbTU1d3FKdFN4TlBlUStz?=
 =?utf-8?B?Z25jL29tdDlGMFVnM3VKRS9SMXVqa0ZWaExqMkpVcUx1K1NCci9vZDVqUUFp?=
 =?utf-8?B?UUEvQTdqRGNuREExOVg1OG96R2xzZU8vQjgzU3VSczdISEVjMnJzelpmaXUr?=
 =?utf-8?B?M3M3c0lHRW41UzdHRTVaQTB0RFlkNFVjOFozVWs3TEJiM2h2WWY4UXF2N3ZT?=
 =?utf-8?B?a0Zxd1FNR3JIK1pBalcyaStWV0pOK2VYbktLZWtDVUFFWHZwR0ZpejFaSFNx?=
 =?utf-8?B?WVdZVSt2ZmlxZEJaREI5eGR1YW00eWNRelVTakF5SDhja0dxSkVBdzdRS1FY?=
 =?utf-8?B?U1hXMkRPSm5GcWxvVGRsUzJYb3pXYUdqcitGVzZ1eitKSXpDR002cnVMYUpI?=
 =?utf-8?B?WWNUSFJVcEoxSE01M3VobUg3V1FTdW5MYXAzVGJvY2FSK2VXV1MrR1RMTE9G?=
 =?utf-8?B?VVVpUkdMb2s0emd1Nk9qZHhzM05WYTVsTllncW1FNEcvcGJzbFV3TjEzOEtt?=
 =?utf-8?B?YVdBZGhyTklUUTRnU25tSnFvZGplODNjSFAreVhHNHh0WGdMck8vU1RBQXJB?=
 =?utf-8?B?bWRlaFFaSzBxUXBUcnB6Q0lVRGd6emxHdVYvMnEzeDNyZE5zZUJ2N3h1Vm9M?=
 =?utf-8?B?bHBTN2ZSajIyNmxKZHUrcWNvWHdpTkZNd1BPb0FSWk9HWHUvbStlRUhDWlVs?=
 =?utf-8?B?MzNvOWw0aDY1dHZ6YnN2UHpvQXA2eWJiQ2hRUlkyTVJha3lNdktrdWNWR0E0?=
 =?utf-8?B?c0JwN0lrSU4vNlpTTFdXTHRKaDdGL1VCVlpISDJ6WDgzb3l4a0haTzM2TWNB?=
 =?utf-8?B?cUtMVkpXRFpVVEN5ZUJ5TVB6TjZjZUJ1aWVNMEZTRWNKYVAxL0t1bGJhREFs?=
 =?utf-8?B?NGw0NzE2enU4M3F0eDcxUkRxdmFQcFZkaDBmQXNIQ3pZSGozRTVPZm1pWHph?=
 =?utf-8?B?S0pLWHlhUzFQR1JZazR3TTFJOE10R0h5QkE5b0lCNjMxbzc5eXlzZz09?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af3ca721-b5e0-44c9-afff-08da23b1f9bf
X-MS-Exchange-CrossTenant-AuthSource: HE1PR04MB3098.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2022 16:14:13.6212
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5BM0/Pc9TLnMi3lmZEZni4Nosy4wu4pn+8AzGah+zZi9McbunRvBQhdkYpFPhxu7i0q/QHLNe4KIMxEcOgRW/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5104
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=mimecast20200619 header.b="a/dowdXI";
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com
 dmarc=pass fromdomain=suse.com);       spf=pass (google.com: domain of
 lduncan@suse.com designates 194.104.109.102 as permitted sender)
 smtp.mailfrom=lduncan@suse.com;       dmarc=pass (p=QUARANTINE sp=QUARANTINE
 dis=NONE) header.from=suse.com
X-Original-From: Lee Duncan <lduncan@suse.com>
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

On 4/21/22 08:03, Dan Carpenter wrote:
> These flags are supposed to be bit numbers.  Right now they cause a
> double shift bug where we use BIT(BIT(2)) instead of BIT(2).
> Fortunately, the bit numbers are small and it's done consistently so it
> does not cause an issue at run time.
> 
> Fixes: 5bd856256f8c ("scsi: iscsi: Merge suspend fields")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>   include/scsi/libiscsi.h | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
> index d0a24779c52d..c0703cd20a99 100644
> --- a/include/scsi/libiscsi.h
> +++ b/include/scsi/libiscsi.h
> @@ -54,9 +54,9 @@ enum {
>   #define ISID_SIZE			6
>   
>   /* Connection flags */
> -#define ISCSI_CONN_FLAG_SUSPEND_TX	BIT(0)
> -#define ISCSI_CONN_FLAG_SUSPEND_RX	BIT(1)
> -#define ISCSI_CONN_FLAG_BOUND		BIT(2)
> +#define ISCSI_CONN_FLAG_SUSPEND_TX	0
> +#define ISCSI_CONN_FLAG_SUSPEND_RX	1
> +#define ISCSI_CONN_FLAG_BOUND		2
>   
>   #define ISCSI_ITT_MASK			0x1fff
>   #define ISCSI_TOTAL_CMDS_MAX		4096

Reviewed-by: Lee Duncan <lduncan@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/b4e1edb5-ff1d-2215-611b-0bc778f1c7a9%40suse.com.
