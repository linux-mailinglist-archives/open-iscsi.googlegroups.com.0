Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB4PA56RAMGQEXWBFO7Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x39.google.com (mail-oa1-x39.google.com [IPv6:2001:4860:4864:20::39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAE56FE47C
	for <lists+open-iscsi@lfdr.de>; Wed, 10 May 2023 21:28:51 +0200 (CEST)
Received: by mail-oa1-x39.google.com with SMTP id 586e51a60fabf-192712e375fsf50798923fac.1
        for <lists+open-iscsi@lfdr.de>; Wed, 10 May 2023 12:28:51 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1683746930; cv=pass;
        d=google.com; s=arc-20160816;
        b=eVWg2QAg7otgL8SZqgLm+hfVPRT8jZ9M/O3WxZAIixTm23NU0TiYa9dtdkIofeLRcF
         Veokr9kPWRXjPyauyeNiI90DkgldV/VqXdjTxPo3QX9pRkQDby2XWaNC7MJuQtqpHH9/
         W/uKtedB5p4Y5evkjnzFBAu5EwNj5hU9EN0/MXEJQTnIvEsDxAcXNtDvnKrbCtzO3xa5
         VRxt/OLFCVWPkxfu9gzK0CC+PMjYHcHVPO91YOTc3bOLjtrU4sf7EldgfBA//gWeVRpi
         nw2jjZ4+7Q0sllGuTarIKoAIO83kdIsJpPLkJTU16tN7Fo/uWDRFrzj1TGs94Frzxj97
         vKhw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=I78Rspt76psVPFBiPhsZgEJD/n/ets6OKpAkjPSviJg=;
        b=WfU2GvdW9aJ4rypFzOD7LdP+gy0AJdBbDHWoUgwM9uBIHRb+0jQjsn7+HqrdIaQm8h
         yto0KtWl4GO7g/TD4VFXLE60mOKPoQmLV4kaG+uXhDm2t/TbKbHPFYIeutRFdgNXYkak
         aKyzzvVB1OdlB2Wyqa6n9e8YdhYVzJ0H3YXz8iiuIQnwKn/djqd15+zuHfnqXEW1bQPo
         lTtrVvnCtLFs79CJoDEz6spTwO74a5UkY7ux4F6cAxRQKGB9BwR694fbBVtvFZ7vL5+E
         dgOV+P35SwARY4cj9mVrM7fJm0QJze2Bygnc/3gqNLBcvTnAenXj7hFHccY85ZYDR+aS
         2VKQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=QcHdsEsk;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=hBXAAR1a;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683746930; x=1686338930;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=I78Rspt76psVPFBiPhsZgEJD/n/ets6OKpAkjPSviJg=;
        b=J86UUhPdEpNXUO3XXvBwjjkdo6nJwEb8cZv86mVYvZCBDo7kxIe/YsQGSAHDBAESkH
         Wsd5WHInvd4P66jPgjx8z/fOAk42Iz2G9Oe1D6z4mqtNMMfl7Qgf5e2nPZde6XOxONu0
         VD/O+KZn/Q2ONc9xHpwS28kUnZ3nXu6ZkruRAh30Y1EU6IrROKCUVyQwf5tfJarCI0sT
         /fy8VfR/GACGznKYqBBeVfrdq/ypUAYvn3fHlQ0uOYlnEtm5od/EGBXjJbvqVaR84Dbs
         uo1F/yOkXXdo9TsbvLuODgMxgVYQi/q25DPa2w8xCCzrDViv8b7qh7qDidA87L7Uov/7
         UCCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683746930; x=1686338930;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :date:message-id:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I78Rspt76psVPFBiPhsZgEJD/n/ets6OKpAkjPSviJg=;
        b=CpDpgjZ8M+aQAfwg8m/nzW3xiUMW6zFb/GznZrdFJIW7v5xJZZ6uU+m13WCf27FNHG
         fKDEdYa7ZS94tyocPSt7x92INdCsoBqEhTVbwLvIPQF2OALM5YRA0Gi6aNtaxxBAPFCH
         1ikYXf3Q2pTt0YasOJJLwAaAj3n/Xgv7dYPqds2SpA5HgLa8z1EyztxyqMlQ8EGkH30Z
         AjDM+HeGdyevwJnlvKI4Rv3cOXLskiNXQ7HCpjNDAPsaAM+37rv558DDRwRFqNh5WgQV
         VccNvB42ywsz0r/xLYguAXxnV/qGx7BuqMxJTkZ4edyQzKT5l9hTTeAAWL+rInZJsu9Q
         KFfQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDx8oYmv2pzV7BZEqDzEaNunWuN1ZiXIflDw/pO1V6pfrfaNHJNF
	2uDvbZ6hUKsPON2FdmqeB64=
X-Google-Smtp-Source: ACHHUZ69wID6hv1UreJvoOzY4xLmgbVrKO/my98hSlXiIOXpNYoeOk7ICjM/OToXyJ5kabXatsmuDA==
X-Received: by 2002:aca:a80d:0:b0:392:5d1a:4f1 with SMTP id r13-20020acaa80d000000b003925d1a04f1mr1982815oie.0.1683746930367;
        Wed, 10 May 2023 12:28:50 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:822b:b0:18b:13f7:81c with SMTP id
 n43-20020a056870822b00b0018b13f7081cls756050oae.1.-pod-prod-04-us; Wed, 10
 May 2023 12:28:49 -0700 (PDT)
X-Received: by 2002:a05:6830:11d8:b0:6aa:f988:52b3 with SMTP id v24-20020a05683011d800b006aaf98852b3mr4044052otq.11.1683746928918;
        Wed, 10 May 2023 12:28:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683746928; cv=pass;
        d=google.com; s=arc-20160816;
        b=sbGQS1LVb8TCWdPRa7VSvRhr0oRXhEsSWEpQ/rpJrPQldIKYanQwQ78bdappooNXIs
         eatgJnTu+X979Y0ZKbRt16BZB35e09JXXnGo1eMavA8Sk5+OnUcrCPcr9zCH0F1AtIBS
         cVuGEsXEVWCR9oFHc3GTvAUasZebjd84iu6IwBKPzOkUTxeBdSr/REkvp+x5UwJRbiZ8
         9GBTBKR0VkTDtmZfmYCQqF0t+X2KqvNIGFoqSNPpb+uRg16YIrJ2gN4+XFgdU48gb5CX
         F/mU5sQ46DXL7+82SLjP0E+X7+oxc0RTMM3HPzOkTVYj94Wa6DfCMLdjMGBYtAUK431d
         wZNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=Nf+rf+oc1BEnorGyAh9LMCPUYnppdGfjoZLY8Or9I2M=;
        b=EFcyIBzBK+LcUK4/Qq1YaCsR63rNM3waAz7Qfg1p2RQzr9myNa7djk66m2RQLEt5W/
         iPDUnyWgfBJvbjacEICrjFfHiI8N9xCWLDdPdtk8AaHuRwXo67kjP3APOrh3FFL2xAgt
         g7nlQ+l8xMTAQhwRMfLkLFOgEgEQrYqMn3+JpOGdD5emNeg9lH1YP9r37eGquQSKiJgr
         jBFWPLpfbOQfyQd5CeigIp90FE1XcOk2D5aE/2BLjSfGu0UMxHsuMmSZt5Y9DS52vbLs
         4J9WgZU38Orr355zpBXRel6WIFUOaqxR8+7fXu8DhhDgTHPXUAT6Z+wVMUBmsirpSH8o
         xHNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=QcHdsEsk;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=hBXAAR1a;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id ca25-20020a056830611900b006aaef871fd2si833598otb.1.2023.05.10.12.28.48
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 May 2023 12:28:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34ADwpnK005079;
	Wed, 10 May 2023 19:28:48 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3qf7775emk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 19:28:47 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 34AITKWv018115;
	Wed, 10 May 2023 19:28:38 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2173.outbound.protection.outlook.com [104.47.55.173])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3qf77htcvr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 19:28:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R6XjDATjq9+J8q8Y2yH8//N735xw+uoCdTMcBaacZgFx51F11zDrVpY9Lb9u+WkuxbhaXq38v3wdiuU7VTcoVuT2htrnnAk3b2SNNtBIFzkQme2C377UBQr9L/ekBG9weG7oFS1aWZlJ9ciA2lHBU2enBY+W+NetpfMZV0gyvpmQtGDtW5WCQ4kgTUS9NRnEyoA/Ssyjhkt1FbxbB67QME6JWFTaHmmobsZgjhxPV8BkD2v1Pt50zh1ksa2dTUZVkqLtKTUiCv2GlODFWbtSF4hJZRzo6/c97HRUAUwn13ImE2DhCk1wnk9170XUtjrluLZZmcWdcARRt2vDU9HCHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nf+rf+oc1BEnorGyAh9LMCPUYnppdGfjoZLY8Or9I2M=;
 b=gzGfXxVFFcpiHdjYWWfZ0uxU0lPFJerGkz/YOaNc+zywnTigixG2Adn5r/spTqN69r5Y334l4N3PYsu8nIxRyemY8aj8XjF0mEx0qXwxaH3uvTolQUZjHekKVWbWwVfXM9ZcFS9Eq9eNnBEpM6+FTeqvDb2TNcriTxyo9y8owWZrXWaR/sp8fnp6GC9yURgVjYEWRls8k2AdOC5r6enSGhYxtb3+lOPx7mLqq35W+U9z+okW0nUeasj3yJtshFBAGKGk448oWDBYmoF8zhhtij8FZ60Sl+DkyuUpmtTJwl0eJVUdNB86Zg0hv7KHkgJV9Zo5EkzlLt5Fak9xq7Qjag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 CH0PR10MB5305.namprd10.prod.outlook.com (2603:10b6:610:d9::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.20; Wed, 10 May 2023 19:28:34 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::264c:5118:2153:91ef]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::264c:5118:2153:91ef%12]) with mapi id 15.20.6387.020; Wed, 10 May
 2023 19:28:34 +0000
Message-ID: <2a771482-b582-246f-6921-afa1832d7dc0@oracle.com>
Date: Wed, 10 May 2023 12:28:31 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.10.1
Subject: Re: [PATCH 07/11] iscsi: convert flashnode devices from bus to class
Content-Language: en-US
To: Chris Leech <cleech@redhat.com>, Lee Duncan <lduncan@suse.com>,
        linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
        netdev@vger.kernel.org
References: <20230506232930.195451-1-cleech@redhat.com>
 <20230506232930.195451-8-cleech@redhat.com>
From: michael.christie@oracle.com
In-Reply-To: <20230506232930.195451-8-cleech@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: BYAPR11CA0060.namprd11.prod.outlook.com
 (2603:10b6:a03:80::37) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|CH0PR10MB5305:EE_
X-MS-Office365-Filtering-Correlation-Id: a40aa799-74ef-4779-8560-08db518cbebb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qBA8n07/ZDXOt8UVn8Cmp6TMXJ2Z/xLd7JML2mnQUDApyPbyXWulHDp8FcCPF7FLUTZ0cqd7dS4Ba94WRInCJhNNu8hvEWgq+aJPejACM/UIO0BGPi9f7qSM6B4WxTAAfnbG+NyllHCMegk5iRGMoRrdC0IvC8nohjF+/Sc/7aaUdbjJ/c+DZz6MOg3xuTh6WfVaM0mhI/VUjExsN3g5FNYDiEM4YAU9cwlhzz72Aqi6w/0mdxWk++tV2/vBfUW4kCeob2MHfqbDgnQwGSAvE0lkbZchrU9XOjNLiLW5nMf+8ff+iCBOfhyro2tqvVFxG2dgpF01W5nRO/otyDwLS+o9dRCBn5oeb2uh9/SHgLdSZT3SzMTVTDEFVTLw7ULoBbFVAi6NUy0gF0B/RzTdGhuunnjJwPjgDCQW/KY3eXCd5DZzC/h8cpjasDus+O1W5QEiqFew5wjpzDdziMjDeAWYCd12OUT2ZKU30YUwmNAEG24Td2Vt33dH5ufbPox8Fl9+euQmcF+3P/s78kG9pBWaVqIEauw2ArQk8rlXDQ+lzx9X4dB/8/ZVCO6AIIbUFQZEKn668//9ez2C3gxGtsLrG3piDj3zCNLv7KJ5zN1GUzEchQ2HAvOQkmvJGi4e
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(346002)(39860400002)(366004)(136003)(376002)(396003)(451199021)(478600001)(31686004)(8676002)(110136005)(86362001)(6666004)(6486002)(316002)(31696002)(66556008)(66476007)(66946007)(36756003)(2616005)(41300700001)(8936002)(38100700002)(2906002)(4744005)(26005)(6506007)(186003)(5660300002)(9686003)(6512007)(53546011)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2xUZHV1R0NMZXZPdlpiN1dvMkxaU3BvZTRiYUdtaFp5bEVmYit2elFodFI1?=
 =?utf-8?B?c1ptNXlNZGQ5S3J6Z09uYzhQbFNyNk9COUdpT3NGOWoxMWxOeUZGK25ydUdi?=
 =?utf-8?B?RlUvZXdKbC95NkJYbVY3NGhLS0hYekZSSjY2SWxnNFZSVDNpWC9PRXBLQXJk?=
 =?utf-8?B?S1ltVkVtamZFUm9NaVQ1bXZCZ0JVR2JiZVdHVUhVWFQxU2x6NGlJS0FlRTcx?=
 =?utf-8?B?OTNFZm4zUnVNYmc4ckF1Rm1GRm5ieW1ZQ1o2TDFJcVlWWEI5VGMvK3RPcXJz?=
 =?utf-8?B?RUQ0OTNTUnQ2TURuMlpYUU9ZdVIyTHp4QnJsdFltZVNzOXVWNW1JNkFYZ2dL?=
 =?utf-8?B?b1pxMEFSUVIxU3VkSklYaVZjVDExcGFkYTdKQzB5UFJpdkx1SU1yNFVlcDBX?=
 =?utf-8?B?a3BWZ1o4NGR4enFMM05OejJDR1lEdVRndklPaFhjSnpBZjhWcE11OVU4WkFC?=
 =?utf-8?B?aUk0cjY2WmptenNwMkxhazZ6N3Z4REk4bjRoa3J5dXdYbUkyV3haOGpzbEsr?=
 =?utf-8?B?TkhWWTlUMHVlY2hJVE5NQUpvNSsxOUNadmxUU1g1alltc2ZOc0swbGJ4dWwx?=
 =?utf-8?B?ekJyd3BobnpVZE82QU1KamhNQXZaV3pkNlZNa3JwVUJ1aFkzY2k4UFJubGhu?=
 =?utf-8?B?UGtZYi9WZGRtb3BFUm5Wa2VhTFZUS1ZCL3Vtak5sbjcvWjAySFB4ZU52Ly9Y?=
 =?utf-8?B?b1g2TUJxWTFhNUFUalVyR2JhZkNnMXRXWWZBWm84bEFLT1ZtaGxvMkhKQTE5?=
 =?utf-8?B?cDZGSVNwaldzTmRjWkxEY2ZOOGxFWkhsTnNFZFNveDUweERqMXRLcUluSDR1?=
 =?utf-8?B?L1Q5d0FOc0RPQnJWUzVCbVU3SWQ5ZDRZWmNXNmVUd3k1bis5ZDE0NWNkRXZu?=
 =?utf-8?B?eWhQbHVPN0pHNk1wRGJlVTVsd2VmS0l3Vnl5bWNuc0g5U1piaW1sKzYwaUpM?=
 =?utf-8?B?czZSOVlNZ2YvWTFWc2JwWU9kVVZIWkxHQWZCbnJVc0xUaWc0RWNSem5hbXYw?=
 =?utf-8?B?SFJxQnA3VDNsb0d1YnkrL3Y4Ly8wd2kreGZoRE5MUDhtVmw5TEhxRjdEQldx?=
 =?utf-8?B?ZnJrM2ZYdlRueTNiQXZialUwdC9VaURoOHRYU1J5eFl1RmV2b2I0QjVGeGdx?=
 =?utf-8?B?M3RTWDJScEs4OTNwTFNqSXg3bVpyb0s3M1lpUkw3ZGJtcEQ4Z2J4cEQ0RGJD?=
 =?utf-8?B?ai9aZ093L0w1RktoaEtSVGUxbm9RYmVnT3YyMDM4OWUxckYyOC9zVnZFc3Vo?=
 =?utf-8?B?TzRpQ1ZQNERJR0hCd1FxVnBuOEkrbGlySUxMRzlSNFl1NHdIQjlFaDM5Yko3?=
 =?utf-8?B?a3Vqc1p3dlExYXFFNjhGVWdjSlFYWlpiRnppQlpLSmVXUDVwSGdmQmFiM0xF?=
 =?utf-8?B?VE1VTnVSWkFjZWVheVB2ZU9Vd2ppU0tadmpiODlRUC9Cek5pQXpBSGVQempn?=
 =?utf-8?B?WG91YjQwWUJPZk5RSUNtU2xTQTJ5WU81K0RkV1pYQlZrdlpuaWVJVU9WMnJm?=
 =?utf-8?B?d0R2Q0IzcHcreW81b3hmRnlFNDVNZGNwaUtUVWY2R2hjdDd0YVJNSktUQXly?=
 =?utf-8?B?S09ZMmZOWEFaSGFvWFpJQ1pQYUhobDFxY213QTBrdldEQ3VWRHBiVm4zSmRM?=
 =?utf-8?B?WW5DK2NwTGllamZCZ2FMWmRZNzN1d2JDc2V3S1dmcVRWcGZJeUM5SFZlVUoy?=
 =?utf-8?B?MkhGdlQ1QytzVVBvSllSa3FqQS95eXBwTkQvZktpdW1hZXQ5YVdPQTNxRnJ0?=
 =?utf-8?B?dmxONTY5TnAyaS9kK3ZrV202Vy8yZmNnWGpTSE9GNlVBeDJzKzZXbmwrNEhG?=
 =?utf-8?B?RnpqQ1NpYkJtcmlqeTNWT1p3bkhTWW5LS3lsN1Nsa2Myek03dk1keXBwem1y?=
 =?utf-8?B?eHhVNDNmcW13MVorS1dTQU9zUExHZlRvYlNxUDU4M1p6SjdCYXlSeHgvTUln?=
 =?utf-8?B?ajd6a09JbWhjWm9ka1RxcVhSV1B4TVVwU1BpQW9ZLzRDN0M3aEx5Q1VlT05y?=
 =?utf-8?B?QzhubkpnemZraWliVitLWHRCKzhNZEZnaVRTSmptRU1HRzFkU1ZSd3c0TWlI?=
 =?utf-8?B?MzV6cnpYQlB4eEhzUEpOTXpQdTdFWTdmWWN5YSsxeXJ2Q0QrWGdVTVQ4QWtL?=
 =?utf-8?B?d3JrSG52MXhMU2V0SWREV05hcnFERWc0Y1hNMUtZWGRhNXA2TFdFUXV2TFRm?=
 =?utf-8?B?b0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: gtsPm0favVgzzBrN4VRFSR37kGqL7DZmIxot/OnrgwVSaJoxIeBfwpw3FRhz/jSaZqIfELjGpT3Oy+5IXia46JxrbLMRN9Ag/zj+q6VgRMB2+h2peHPhrLZyqYKMfWE1bSmMFvuW1vOIjgg6WDXHFpnpj8JQ1J6qyBBT7ZpxtxuU7lHJjLuShUblmB3yjlrMA62g7onkqGgK6i6e+JZZ/3QJqnCHtd1lePHdia68Pfqts2WBLnle0kwCmJLsEG8mZ2O3ELFlwOIwbv5hyBK3LfnIwzhzeK0CuI4xhgVEMuymI314+enM86xPzCOGFngNN9jS61etGP4S6awcGLt70Pmp7cefEiQlJOkkpEFNyACRtqEdNNvr4XC9T4D65/YK+pT4YSp4MnETkBW4VpuM0sS73fyq28kVLWE7Ex2W/jUwtadgMPId2U1VdK0qsmt02NHZB8ETXfBpWMF6e4EqIqRTb51YS0qb1q3rEBDW5pgKH0mFC/2IBj2IE4Oy/O9y8m8eu++ranD2m6PP+w+fr2BnyENd8fxLvpASbO/+fIWyfsAKu26p73rQkuM3BEX+UMnWaGn1WVbvjGV5PUcKeyYo5Nd6QgPszqKq6mP/clNHp00e1iG39aJ3y+T4XtuinKIT5qv4NLd9IxGJIP51H2dJ2Z0LRBhtPrAACR4XeEi5vPLy+SsSMzz8efSIH8bY6HuxrP9UPbDgcffCjZBFf3XO7oX/1wBkZ7xEkbqq31BiVphhnODqZhwRcIViKXycPmTGYgIE1AT1ukFRLYC0MbnqqQ4nVxTkE2RBR+mmE4PIqX0advyBiN5fi4dQT02072qfH2MR8AD3FkNTpzr6XXnfyAGbRq23y5poQK7VXW8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a40aa799-74ef-4779-8560-08db518cbebb
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2023 19:28:34.2712
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: saJwq6Vt8O+/Mqz317xAhtAIuuwv/8zvI/rSquC6g+1CYsqhb6UN2+WKFaIseZa5DIKP9Po5xWohuqzZbQbvGyUJKCcB21aEAaOnwzunNrQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5305
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 malwarescore=0
 adultscore=0 spamscore=0 mlxscore=0 phishscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305100158
X-Proofpoint-GUID: kJExU0ig4aydBP4GuOnm_3tt8a6PlpvZ
X-Proofpoint-ORIG-GUID: kJExU0ig4aydBP4GuOnm_3tt8a6PlpvZ
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-03-30 header.b=QcHdsEsk;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=hBXAAR1a;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 5/6/23 4:29 PM, Chris Leech wrote:
> From: Lee Duncan <lduncan@suse.com>
> 
> The flashnode session and connection devices should be filtered by net
> namespace along with the iscsi_host, but we can't do that with a bus
> device.  As these don't use any of the bus matching functionality, they
> make more sense as a class device anyway.
> 

Will offload always use the default namespace? If so, there's no need to
touch this code right?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/2a771482-b582-246f-6921-afa1832d7dc0%40oracle.com.
