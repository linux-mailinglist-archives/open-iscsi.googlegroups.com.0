Return-Path: <open-iscsi+bncBAABBY5C4WSQMGQEWQX24JQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8285175B263
	for <lists+open-iscsi@lfdr.de>; Thu, 20 Jul 2023 17:23:18 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id 006d021491bc7-565c1949b5asf1318749eaf.1
        for <lists+open-iscsi@lfdr.de>; Thu, 20 Jul 2023 08:23:18 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1689866597; cv=pass;
        d=google.com; s=arc-20160816;
        b=Im0tGZYZUWghuMPDqOXMaH0zhNKGPgShJhOG/ZfmRmf237Cs8mm0mLJR8+knb/pNno
         4OZBqDQyNf6LpmyVl81STRqibtqBcZuB0zxg3jXjyqGgb5nev43hbbtaeOoY2UGRbrmV
         tibi9NrIKcV4tsKn30H45jGS2Q1p68LsQyV0vtcyoebM2RHoSYEZmMbj2nvsq0Z8thug
         JAzUjeVxR1jZPZohZhVMKPnkz9VRyl/gJChdDce5pGJ09wQqqLNV+t1KuKDdsRZk5HSU
         gEQh+xuTS5TT4QSkglcA0J8iMJRRfV8YXqw/iq8r7YTG2AGvdMQJZ1b/RCwdgDcOV0dM
         b7KA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=dyXn1+v1OP0Rugm0SKJ9FVaA+iXubrAdU/MjRc5ZGBY=;
        fh=DMOlKQX/9BEHgIp8kq86JqtgJfpMODqEIBspMeg0iKM=;
        b=vk2nbEY02tL1+CbUYJjLJZe1uP1TkeYvWeYS4T0e8iw9ifImzbAe32l7cFEzqg63JH
         k9bhEI4IV2G6OKBjWTjOxGODUN1XNnzVCxPD6WzF+SAkU1XaBZvy8rGbRNBV5hb2gFGX
         u3z7sPZ3AvZFanDpkEw4aXEPWTA8hxHWGCJ1rdjusYctyq6N4p1JQ4XHrpqW6HdlOJkt
         h/z2+a6Lu9AcFOizP1ttx/VXeMOhr379MSO2K52n+skpR8FWevLCV3Rd5Z8kczrPBU0S
         4mHYomdXssDALqSMXIeUQVXY0oZZxBDPK0uCKY8cnooZ25g9HoV6N/XKiAb6bAEuEjx7
         p+wA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@vivo.com header.s=selector2 header.b=qDy5V4HW;
       arc=pass (i=1 spf=pass spfdomain=vivo.com dkim=pass dkdomain=vivo.com dmarc=pass fromdomain=vivo.com);
       spf=pass (google.com: domain of duminjie@vivo.com designates 2a01:111:f400:feae::717 as permitted sender) smtp.mailfrom=duminjie@vivo.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=vivo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1689866597; x=1690471397;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dyXn1+v1OP0Rugm0SKJ9FVaA+iXubrAdU/MjRc5ZGBY=;
        b=rkUhl3wys+r4cKD5wH+5j6lCshEW7d5OVvRuY1Dz1MCwsFYi/PfVRrNmxJzGP0T8hf
         tDQJ5UvEViBHg5DP9nRxBeAY2+Qtmuq7JIy12GXr8Y8pXZfuuZWxmSZJxvJ2btq5h7SE
         qHQOq4EFG94om8zqnPFoPL6M0GgJtSFxFR4PTA9Fh+lJv90QACWJbuVwJgDC6TpJHxAc
         e5KVXBzR5MjSy9sUaSePOeAQttpr0Wem87dIXuHFTqWYJ8ICbKa/AXHpFmWnVz9N/4ay
         PdGv0fPphTauJ2fVYCLi3SAk77Kyi0VWmlkMnW2LX9LIO/Wbcj7e2Ww3sUG4W/xpjVH+
         /5UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689866597; x=1690471397;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dyXn1+v1OP0Rugm0SKJ9FVaA+iXubrAdU/MjRc5ZGBY=;
        b=lQYL1VZQ97/sygLKfxsOVmoVV80k5YMBLxJbKBNT2XbS6D4y9jsFJvgIJM9tttwBp9
         n8p3g52CA96o6ulUHUqqmoWl+b1GosDug3Rzgqp4B5NwImCRJLYiBuUbiW7Ecw4TMaXz
         vg0hheEcWL/ITeJODqesgLHbFWMwuKJkT+asFeygTjZGNVNhhoKn+OIMygOADTvHBFR4
         dliXqS/uPMEb5XWohJngKVm1+C2m3VYpVB73tMUqDSlCp0VJXjKfYKKTDUSIggdrSm9/
         AlI4oRW/R6mH8EAUgDIMlJ02fuKek8SbXiuSEkoiaT0/iz0C80v2eV1DEWnChLc+FSwa
         Q64g==
X-Gm-Message-State: ABy/qLZjtZFNbQ6bYxAMnDF3uJiYYd6KTW3zX3iVXGyVtNlwevqslSDF
	0eJj1+rgxzM/Z19j5JUfuMo=
X-Google-Smtp-Source: APBJJlFQXSd92vXSjUnUO0s/d7DivP2dvMnn1wo3BkzAHaybiB4X9rZ59SWfLFZ2A58PAJOl4SrL0A==
X-Received: by 2002:a4a:d632:0:b0:566:f0ee:a44d with SMTP id n18-20020a4ad632000000b00566f0eea44dmr2658143oon.3.1689866597029;
        Thu, 20 Jul 2023 08:23:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:2c52:0:b0:563:492f:3514 with SMTP id o79-20020a4a2c52000000b00563492f3514ls868671ooo.0.-pod-prod-09-us;
 Thu, 20 Jul 2023 08:23:15 -0700 (PDT)
X-Received: by 2002:a05:6808:1985:b0:3a3:a8d1:1aa4 with SMTP id bj5-20020a056808198500b003a3a8d11aa4mr3903114oib.2.1689866595690;
        Thu, 20 Jul 2023 08:23:15 -0700 (PDT)
Received: by 2002:a05:690c:17:b0:576:aee7:c5b1 with SMTP id 00721157ae682-58362368263ms7b3;
        Wed, 19 Jul 2023 00:45:52 -0700 (PDT)
X-Received: by 2002:a81:6802:0:b0:579:f7d6:cfe6 with SMTP id d2-20020a816802000000b00579f7d6cfe6mr1786336ywc.51.1689752751917;
        Wed, 19 Jul 2023 00:45:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1689752751; cv=pass;
        d=google.com; s=arc-20160816;
        b=wSTRf64E9HEqjNvrg0NJ4hXz/jeK2Z5HhE9uPIJeA2Ts3FWWPkI7jKUV2Sseh3RC6F
         MhhMiML7mH1ECXhdAKf2b10UsaojYISehPvoHEXJL9OIjbPxm+tCVFn+byPbUrLTOMP/
         smGydd+sx4uRF2SQdn3L5Ljlbrs0cUcvcu5Q9dNiDlyKJmcYuAjRurYsbVcJOugfSXY+
         iT7mJ+FHNCs3NlD4DlpKcu6b+i+cu5oN+Mu1V3S8miZXdiWqBf/vVuyLh6CtwLao/rAO
         w3qJvgWxvwXEU8JL2EDB8/x+g7D/WK+lMNfbQlWcVXL37YCn/g2ameNkcpAk/B9/PQeU
         5jjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:dkim-signature;
        bh=vuL/k+8dey7g1K0QHs4ECRFEypCkehk6UcWrksf6BBU=;
        fh=wx8n3KMpKrm2m43edDZN+bqOXV3hxwjlOixDJ7jX964=;
        b=SzPHcF0FZo+KVc+xRPXR/hfqsJzWGMrsmXA0ndrbjrCbB9fmp+2pUpyKQB8nzrQ0Km
         oxkaDOiT0hOj8RtSkL6Di6w3t84zD1S5C5aWnnzzdix3hz8nhb5bVQGB6o1xTTtawGyg
         mNHzKM5H8sNJnxY1h7N4t45o7eT09DM5ENB4W1su3GUf4e+t50ev5MccDTQMprsc8nPV
         wUfQq78VsjUYdAIGUGWCoLHJ/s5T0zoCkMRBgChuSKtbSVbCCq+nybzdqxJbOhodGq+X
         4HtyC4+fK9qRShGjBcpI5wi0P6ECgAc4eFhSD4/NHKe9+46Rgtl0vbUWNVFn92vyep3j
         vlbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@vivo.com header.s=selector2 header.b=qDy5V4HW;
       arc=pass (i=1 spf=pass spfdomain=vivo.com dkim=pass dkdomain=vivo.com dmarc=pass fromdomain=vivo.com);
       spf=pass (google.com: domain of duminjie@vivo.com designates 2a01:111:f400:feae::717 as permitted sender) smtp.mailfrom=duminjie@vivo.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=vivo.com
Received: from APC01-PSA-obe.outbound.protection.outlook.com (mail-psaapc01on20717.outbound.protection.outlook.com. [2a01:111:f400:feae::717])
        by gmr-mx.google.com with ESMTPS id db18-20020a05690c0dd200b005835c0a3992si134912ywb.4.2023.07.19.00.45.51
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Jul 2023 00:45:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of duminjie@vivo.com designates 2a01:111:f400:feae::717 as permitted sender) client-ip=2a01:111:f400:feae::717;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lzefTFbDuoU+5elgRq+13SLwrzPe2xbN2tLH+w5MmSkjYqjlkT7RjjcP04BGxqTGK2t/WprRgb2rB/a4Y7XXzVEjvqPVIBaPD16vVpWvNEoOnv/hstf88VcCtvfO7CeEYAYFibC/jHBgHbMaKZDW/zrI4mRkQoG3hCV0TJJtLL0JWLVjACXne4czHp/cjue0WBMlVbKTWdK9njknlgxLTsXTf4vuo0+c8Qe5tJiHAzEiDhpYV9Bxio2yJv8W7S2EbjSY5s7Ygvyd1ypliKqReigoBWG4KXuxE47MoeB3N+RV16vPATR9JBlBQbHk3EtN4xlA3+SdnznBAcHDReBskw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vuL/k+8dey7g1K0QHs4ECRFEypCkehk6UcWrksf6BBU=;
 b=MJsbEvfl8H9W0194tE6q+0z83beCZfyS3YOVjtUHKTaZwMI6STIm4TRh/aHojX3ZDpXgleRjdhL4nQ0WI4ofTh+SLWaHAI68XktpCTgXsiI5Kksb3Yegbbegp9t+OSDBiDOcoMsqCRMXLigErk9kgA9lClehfFzmSVLJlQNgA9xwK136UxPKrD83kiMz61hpHgqc35+AlCM9GbR0r39XZTMK7Wc9EdV4cQCt8wOvgrHFsowLHHvfwCJnMSUx9t6B8hGIezAsR0rawHWtEMBadvfP+9t78oM6BgG1GcroVCWLA0oUC5kJGMUShqUa9oHkfXZr9pjulcTNeR8y4JQX7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
Received: from SG2PR06MB5288.apcprd06.prod.outlook.com (2603:1096:4:1dc::9) by
 PUZPR06MB5498.apcprd06.prod.outlook.com (2603:1096:301:101::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Wed, 19 Jul
 2023 07:45:48 +0000
Received: from SG2PR06MB5288.apcprd06.prod.outlook.com
 ([fe80::75ed:803d:aa0a:703f]) by SG2PR06MB5288.apcprd06.prod.outlook.com
 ([fe80::75ed:803d:aa0a:703f%7]) with mapi id 15.20.6609.022; Wed, 19 Jul 2023
 07:45:48 +0000
From: =?UTF-8?B?J+adnOaVj+adsCcgdmlhIG9wZW4taXNjc2k=?= <open-iscsi@googlegroups.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, Mike
 Christie <michael.christie@oracle.com>, "James E.J. Bottomley"
	<jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>,
	"open list:ISCSI" <open-iscsi@googlegroups.com>, "open list:ISCSI"
	<linux-scsi@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
CC: opensource.kernel <opensource.kernel@vivo.com>,
	=?iso-2022-jp?B?GyRCRU5JUls/GyhC?= <duminjie@vivo.com>
Subject: [PATCH v2] scsi: iscsi: kfree_sensitive() in iscsi_session_free()
Thread-Topic: [PATCH v2] scsi: iscsi: kfree_sensitive() in
 iscsi_session_free()
Thread-Index: Adm6FQhYEEKxsSuVz0a2ibXDA1oWjg==
Date: Wed, 19 Jul 2023 07:45:48 +0000
Message-ID: <20230719074534.5311-1-duminjie@vivo.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SG2PR02CA0137.apcprd02.prod.outlook.com
 (2603:1096:4:188::17) To SG2PR06MB5288.apcprd06.prod.outlook.com
 (2603:1096:4:1dc::9)
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SG2PR06MB5288:EE_|PUZPR06MB5498:EE_
x-ms-office365-filtering-correlation-id: e1a0c644-205a-48f1-6f5c-08db882c2ad0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jd7oaYDVKSvyCigxa9XGhOPEXSBdhVrJ0olrFlcAa68aahLNNzWqlAnfog3Achq8wQlNWXRd/IUgIsrkw1+Bo/i5UJpeagfMocBJgDyihSmUlKQNwdvbfSqOl4Dj96Mi/CqnCpWLJgBiBOXt5fBV9V3dBe7DNibgMUYA1PtBLHwW3kHYr535W8qOtYckdy/grehzZT/zLh33rQImMcORRXx2ZeLT1SoTLGhddMvhTIeeb9aIqgBzVsibN660dLr6SMbBZwH4i7LRN8RH6GjwPxF5JhlJTH5i+IeskK70fx4I6VOrNabOCdzj/q/hZYLsEckRxSJL5dQPHoZ3P6BMFcY3y4fuz1nstp3gWh2scJqJbzrhOb7aFqgOM/kUs+QfxFvxEN06Ej9CRGdGlRTYFRogJhj55Li+PaqeJE+j7Qza3HqUi/Q9L2q3KOkGT88vXtimep7oak0QFsuiA6rCiGk0+HWmzUeO28x892k480fYQtoqD98rVh58mvByJja3f/Ewe8YXYeVwLoqr3djjTO7jzlqxfL6RyE/MTA2XKygd7n6CKyPjviuCD+Ek0PPHEImINR3VMwWrm3fhRCz5PVFqRXXKOLvdeO4umN9qVq+aiZbz7IHQc8Nm+yuxSF74
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SG2PR06MB5288.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(376002)(39860400002)(396003)(136003)(366004)(451199021)(2906002)(86362001)(6512007)(122000001)(83380400001)(186003)(26005)(1076003)(2616005)(107886003)(38100700002)(6506007)(5660300002)(38350700002)(8676002)(85182001)(66556008)(54906003)(36756003)(8936002)(6486002)(110136005)(52116002)(71200400001)(478600001)(66476007)(41300700001)(316002)(66446008)(64756008)(66946007)(4326008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-2022-jp?B?QmZobzEyUkpKVEVIM3libGpSeHF2UGFaeHdaYnNFZ1RJbkgwalAvTGNC?=
 =?iso-2022-jp?B?TEg1Q0FFVysxWlh3OVd3MnM4WUJ3RnBSS3pnU3pHMU42RkRoNXQwT0NN?=
 =?iso-2022-jp?B?N2JiRnFvQkw3dHg3R0xicVdYdjlHZDdjemNZaEpyYXljZFpKcjVZYy94?=
 =?iso-2022-jp?B?NEtqUFVFY1hPUUE1S3daUTlhTjBCODVkZWk4MTZObXNGTS9IaGcwUTBG?=
 =?iso-2022-jp?B?aklHcTBCejdsVFd4VXVra3pGa0pvVGNsMDVwWFJMa0NOdDhIR1JROGxR?=
 =?iso-2022-jp?B?dysxOHRxaHhQMmh3aldXUlRDOHM2R3JNdkN6b25SM3E4SCtidjMwYnFs?=
 =?iso-2022-jp?B?SGdDY0NMTjA4Sy9VNDdFZ1VNV0JBckM5SnlhWmplWTVYOXBuNU9UaUJM?=
 =?iso-2022-jp?B?eEUyNTFIc1pXbkxJcVoyd2JqZm9ZYTl6dU92ci9qa2hCMEl6Zk56VnVx?=
 =?iso-2022-jp?B?eFNpamhsQldZYUM0UEEzaVp6dVRINkJpL0djNjhUQ2ZYbUpXQkNwaXF3?=
 =?iso-2022-jp?B?emJWV0hrQWV2YU85cXJZcGxiTGpVaUlGbDBkeTdKUEZXUHM2aDRjSWYv?=
 =?iso-2022-jp?B?NEp2YjBIdE1qS0ZPK2dnVXJCRGlsdHk0VFRkNDI4Skt3YkxrV2EwSVJL?=
 =?iso-2022-jp?B?SWhhWVJ2Z3FMTmxIN1hNZko1WmFZc2IyZVB2UFhUQjEwemllVUZpTWlL?=
 =?iso-2022-jp?B?YlFNRGJjUU9HZnNITi9KNnRlcUt0QUZxVysxbGttZ2JTcmpsZzl4UWxi?=
 =?iso-2022-jp?B?ZnBsanJ5d2JVN01hUHNwcDc4UndQTHF1UklhdFpqOEpYbmF3enkwZmVv?=
 =?iso-2022-jp?B?d0Z5Ujd0MFZJclVzbmRtM21qd1dRcmRXd3RDRjBFanVzMmdDNzhCdjJ4?=
 =?iso-2022-jp?B?TVo0cTBVMlcrUVZvQUx3QkYvYWo0a3VlMks5bzdRWC9GSUdKbTUvaEVE?=
 =?iso-2022-jp?B?L0FMVlBSQW5mNkt6NnY4c09sclUxMHJPVkE3aXVJWHB6SmZ5dkQrTmc3?=
 =?iso-2022-jp?B?d0d4eWtyQ1N2L1pETTQyM1dVUVJ2THVWWEJlNVFBUkdyalRSUXdPeE1k?=
 =?iso-2022-jp?B?ZDIyb3JDRGdHR0Ric2Y5RWhaVUxiSWVCbkprVEpqOWpyUEs2QlF0MXFC?=
 =?iso-2022-jp?B?NDNCT0NUWDV6TWFJOGxiOHB0cmwvK2t5Wkd2bVJQeEU3VDlteUVZQXZa?=
 =?iso-2022-jp?B?Z3BYeEpKT3ovSnRqbnpLU3VibWlSZnI0L0dFaXRsMGs4Z09GQTFZa2gz?=
 =?iso-2022-jp?B?cFFxbldrU0dkdXpNOWJUTzZGNVYrTS9NMjhYcFNmbkVOOVBLYjBoQTNu?=
 =?iso-2022-jp?B?clEyN1k2Z3pmOFVPZkNIejJhU1lJMlNITXZNOXk4N3RaWXBvSzJQSU9V?=
 =?iso-2022-jp?B?OEs3ay9SdWkyYjlMYk5TNjVIZ0J4d3RWOExiNGl0OHRRcDh4VzFpLzdp?=
 =?iso-2022-jp?B?TWxjZGJ5L1kyK1VBOVdMS1FVaFZKUXlIWlVCQTg5QTM1LzltbFpHbU9p?=
 =?iso-2022-jp?B?VG03K2h1YjVsdnR6NWF3T2o0eTFGWTM3bVZWNmo5SWJhRkl4elhmUGhU?=
 =?iso-2022-jp?B?MXVNZnV2ZEJibURTb05HVTBxaWwxUFp5OFRjRXdPdWZJMFcvYjMyZFhp?=
 =?iso-2022-jp?B?bGFJeGZSKzlxOWtadjJ4emcrN243cjJzc0lBV0xvNC9iTW5qTlBrRDlC?=
 =?iso-2022-jp?B?YS9nZ2hKTW56aEx4TnFTMURjaUVZUk85Rlh2U1BjLytjY3g0V2ltQy9T?=
 =?iso-2022-jp?B?MnBVM0xSMTM0bEJJdjlCWlFSVUduMGtVcFUxT1Zja1NEK0xDOUZXYjR0?=
 =?iso-2022-jp?B?U0hMZXcvMU5CUldqK2RZWUVXeDlDMStKV1VhUnhLQ2FxcVAycndWRVM2?=
 =?iso-2022-jp?B?QXl5aGdENUwzV1pJODBwamVGdmRyK3lWUTV2aFR6eTBIREFJaEhaT24v?=
 =?iso-2022-jp?B?L0UxaG81aWhqMkNmTWtRbnhSRElHMlBPVTVFTHFtalRyK05pUlRqMHox?=
 =?iso-2022-jp?B?dndwUGs2NWQ3aC9LZld5dG00VUxGWGs2U1VNTkhJaEI5bUQ5emc4RldL?=
 =?iso-2022-jp?B?VXd0SG1jRWUya0pHSUJZTm43MWFqVklhN1NTNkt4cGt6elhpcjExdlNv?=
 =?iso-2022-jp?B?UDJMMzhOU0htbXhsSmVMSUtlYTBlRkFpd25KTFhlM0ZZblRPaXZldGtM?=
 =?iso-2022-jp?B?ejVSQW9VblFPcU90RlQzWHphOU5ib1ZRWTU3MlovZFZUOEVIMTJVVW9H?=
 =?iso-2022-jp?B?eHZrTjFaTzBGZ2hYeDc2eU9XMndZUjd4S0F0S1ViMmRuWlZtdXRMTlND?=
 =?iso-2022-jp?B?TkNIZA==?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SG2PR06MB5288.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1a0c644-205a-48f1-6f5c-08db882c2ad0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2023 07:45:48.1257
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v75rz+oFpOmCU9vwJk1xSwTIAYsnogqz2jyWE+Ctm+rdO/G9SiK4oTf9mdfbs3BB1QgH99Q8X/lqT4XM71c83g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PUZPR06MB5498
X-Original-Sender: duminjie@vivo.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@vivo.com header.s=selector2 header.b=qDy5V4HW;       arc=pass (i=1
 spf=pass spfdomain=vivo.com dkim=pass dkdomain=vivo.com dmarc=pass
 fromdomain=vivo.com);       spf=pass (google.com: domain of duminjie@vivo.com
 designates 2a01:111:f400:feae::717 as permitted sender) smtp.mailfrom=duminjie@vivo.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=vivo.com
X-Original-From: =?iso-2022-jp?B?GyRCRU5JUls/GyhC?= <duminjie@vivo.com>
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

session might contain private part of the password, so better use
kfree_sensitive() to free it.
In iscsi_session_free() use kfree_sensitive() to free session->password,
session->password_in, session->username, session->username_in.

Signed-off-by: Minjie Du <duminjie@vivo.com>
---
 drivers/scsi/libiscsi.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 0fda8905e..a307da898 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -3132,10 +3132,10 @@ void iscsi_session_free(struct iscsi_cls_session *cls_session)
 	struct module *owner = cls_session->transport->owner;
 
 	iscsi_pool_free(&session->cmdpool);
-	kfree(session->password);
-	kfree(session->password_in);
-	kfree(session->username);
-	kfree(session->username_in);
+	kfree_sensitive(session->password);
+	kfree_sensitive(session->password_in);
+	kfree_sensitive(session->username);
+	kfree_sensitive(session->username_in);
 	kfree(session->targetname);
 	kfree(session->targetalias);
 	kfree(session->initiatorname);
-- 
2.39.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230719074534.5311-1-duminjie%40vivo.com.
