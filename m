Return-Path: <open-iscsi+bncBCN4FJF4WYLRBQORQSUQMGQEPKVMM2I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE3B7BC67C
	for <lists+open-iscsi@lfdr.de>; Sat,  7 Oct 2023 11:45:39 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id 006d021491bc7-57b5b51ea71sf3584390eaf.1
        for <lists+open-iscsi@lfdr.de>; Sat, 07 Oct 2023 02:45:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696671938; cv=pass;
        d=google.com; s=arc-20160816;
        b=RuGfhxr0kf48czbxQnhOMV3HbAEeHlYS01/Q1pVyt8DKDQuQ6RRRiWLh+gZyrtfznk
         GG/JpTxIOG3ZPIXRuJ3I12HG6CpF/dfJBv01MjFQoUbyIiFTQqBAsMXLdjT0PaaysCje
         HZjA2MrXyDLi0igIKr5r28UcGXXr7FVQaOJVnlnEbs22SV/MMwGpXOOD3yc9LSt12Yi+
         8KQ2w/a0pO/U5fGNWr+uH29wzYwIWcUwzZPcl1sUPKEW36WZbeWI3L0YCEm7ZnNlklkI
         lkLlGQf5UQoY6j0A593yCUPgCRWzGv605XbOFxw7Vg7QVKGUNk/Baw9r9+MKrXSS0EQk
         nVXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=x6IAGkHolri0w/pnllldqgFxDzY/IC68NfrOzRzmGBI=;
        fh=1P8NgU50PxHZdbwZcm0RhGfpfaEszaZZUlNuX7tjKbk=;
        b=Zobq7F6NuY6DscU6iPlrNfibwLd2/+4YLQW4IdOeoFsjcljjUgyrXQNZ85tfWpY2p+
         zF740E4D1g6fr8twu+rkd1nZfPrzAru47DKUOv2m6tr1es0gv/k1o5RbFkvlYrQ40loy
         gfHBOab82aGknNMAgI2oMPgZyRvyAhP6mu23NfPSIl2Crw7G2WhYFdoQPAte4cVSGKeP
         LHWmhpxiWDqiDkszrg0p0BFzAIJmRa4S2bPeGsLP8DwsErUmXOAqJzseNKf5pARTYGw0
         vmvIGXeuXP3aXrE/timtJC7JwSLMNnsEqffGjpq7Uw+DYlDiTslbmb+nKZNr4sw4bWGQ
         a5ZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1696671938; x=1697276738; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x6IAGkHolri0w/pnllldqgFxDzY/IC68NfrOzRzmGBI=;
        b=O43eWZU+/KDoikyAUXV//RoNGu+pOq9NsqX3/f+OqnAmuuqhcaaV7zhlyVLRdwf9nK
         y52NHRuIT8ritXsRcBF2eX3SH85t4p9AR2sDG3e11YqhLwotuRvmruQnaCqN8ZhX1/A0
         85Gw0LYWiHi7bOHSaKCgWeaviKBzglbQBb1Vm3bTQgvdJCVCWPj1TV+6Lgqx/J2bRCPv
         F9fqvkYPlFKOZTVcnT8KTNT5ty2ye+yP9rcfbK9Xhrk7/bhfc5agNTtW2E3qZtv+S9oK
         XU4gZD6mUUiW6ImC/w176BajnFHGPPQCxPusPmr8neaehW8L1Sgx3ezkszw8bCPbZ/A9
         YbNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696671938; x=1697276738;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x6IAGkHolri0w/pnllldqgFxDzY/IC68NfrOzRzmGBI=;
        b=j41UbM3kcvooPWuV4QrliL9rzWaE751lgGDO5jPSSG938tWskGG0MI9AvQ/7pOk31D
         u2dkX7BzfwSs3n06uFsHAwX+W55JBKrRKxkVEUAbEZztWe9YhliuwNYJkq25dip5p285
         XsHpVSu5Od8SzyPxI1+MT8jE+L3L3UwUfXXTJ4cMqPldVhN8ZxWBhjNZQm1aGFgfIf1T
         FBFv3FDnByp7CXW/MQPcczcOX7/MDvT5FmMFao9uAW+BVO4pHHw6ImTOCWDPLEMOGoCV
         709YUXNElxikWd97RiATDVmeGk1LQm/mp+5UAMQY6gqchjcscQUWUAfuY/mKZm3HCzzH
         tm9g==
X-Gm-Message-State: AOJu0YwyWt3pRA6e4CbSDT864oKGh0WEQeMXVpOF4ahmktPDhCWQCvIz
	Yo0Yf+0JHVqy9K5AR/gzoc4=
X-Google-Smtp-Source: AGHT+IGHTD+vaOaZxdtOwXaIlKcCdrc032osY4XZth05alesy7gYL61wlpsWg/HkzSKSWPEJtmuCow==
X-Received: by 2002:a4a:6c02:0:b0:57b:6a40:8a9c with SMTP id q2-20020a4a6c02000000b0057b6a408a9cmr9131718ooc.9.1696671938444;
        Sat, 07 Oct 2023 02:45:38 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:4f4a:0:b0:57b:6ab1:a1f8 with SMTP id c71-20020a4a4f4a000000b0057b6ab1a1f8ls1477707oob.2.-pod-prod-08-us;
 Sat, 07 Oct 2023 02:45:36 -0700 (PDT)
X-Received: by 2002:a9d:6b0c:0:b0:6c6:4843:2abe with SMTP id g12-20020a9d6b0c000000b006c648432abemr11331568otp.14.1696671936628;
        Sat, 07 Oct 2023 02:45:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696671936; cv=none;
        d=google.com; s=arc-20160816;
        b=lXaXEf6zYDNILWSKiI1vgyfYHY9DHFSrOSGCzrOR31ulcqhBUV07olNDVZvF7NcNPi
         57SqAJdgs3f6KR2sifZeZe5vAPvfgLqoG1atcuHUUjCM0IvnWd2adC2+Xbq1LFrglm3y
         ovLa6mITkVl4YZt4mnXLt66kikaiKsecKOHXjqUUvh/BhGB9AUdjbGpGqTtbU+H7ntMv
         SSIOV8gLHMPeoOcsaAq9TV6yhE6WBhVpvOCNAUTQl77JWgQthG5cxCnTSBjRxKCg5PhY
         9J5jhDvzdH0J54brtYELBacTxyDhzFEqSTnpM/FG5ozkoHhGS0WyKB+3+ZRGPbJmd3/P
         3KBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=pcJ3Xkr7qZxV9hiCxiaJTVPcZX7tThAI3b1kyBcGRnI=;
        fh=1P8NgU50PxHZdbwZcm0RhGfpfaEszaZZUlNuX7tjKbk=;
        b=Vbd88EGDm5b7KSj1AycX/VkHc1CixinMGiozc8L6hKxQr5LitWFydX19VaPIytS68x
         aRMtU/0ZElDhzCZLvOBxQ8rcSQTnJw7r7Kv1gSrE58HkYeHfqtmMqtILXfnJA0Ub/y+Y
         rHcL1pMFbLDqnwZ5vna/zM6BjOSXqIZJ5aonFDSV5Nb0fKK5JzLFuHgTw1LX7Iz2mWTt
         M460XDCGB7rNTkqZoGHPdVl4CTJrWx8EEpxfaJ9Jn1aDb3DxZT+KwUkDGdzDaThTbnHj
         Knl1mnStYE0zNZOJ6vF3p+K+XbqdntxAx71usxf71ncFFQPVXas7OzyF0YK/ZsETdMlV
         WGOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id et7-20020a0568303c8700b006c4dce426adsi646264otb.0.2023.10.07.02.45.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2023 02:45:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.53])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4S2gMY6H80z1P7j2;
	Sat,  7 Oct 2023 17:43:05 +0800 (CST)
Received: from [10.174.178.220] (10.174.178.220) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Sat, 7 Oct 2023 17:45:33 +0800
Message-ID: <fa567e0b-00ca-76ad-f9e7-a554714f813c@huawei.com>
Date: Sat, 7 Oct 2023 17:45:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v5 08/10] scsi: scsi_debug: Add new error injection reset
 lun failed
Content-Language: en-US
To: <dgilbert@interlog.com>, "James E . J . Bottomley" <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>
References: <20230922092906.2645265-1-haowenchao2@huawei.com>
 <20230922092906.2645265-9-haowenchao2@huawei.com>
 <fd68ba92-7736-4924-945e-4bb238a02860@interlog.com>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <fd68ba92-7736-4924-945e-4bb238a02860@interlog.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemm000012.china.huawei.com (7.193.23.142)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao2@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao2@huawei.com designates 45.249.212.255 as
 permitted sender) smtp.mailfrom=haowenchao2@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao2@huawei.com>
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

On 2023/10/7 5:04, Douglas Gilbert wrote:
> On 2023-09-22 05:29, Wenchao Hao wrote:
>> Add error injection type 3 to make scsi_debug_device_reset() return FAIL=
ED.
>> Fail abort command foramt:
>=20
> s/foramt/format/
>=20
>>
>> Examples:
>> =C2=A0=C2=A0=C2=A0=C2=A0 error=3D/sys/kernel/debug/scsi_debug/0:0:0:1/er=
ror
>> =C2=A0=C2=A0=C2=A0=C2=A0 echo "0 -10 0x12" > ${error}
>=20
> These examples are misleading. Same with the one in patch 7/10 . The exam=
ple
> should be showing an invocation that exercises _this_ patch. So the first
> byte of the echo should be 4 not the 0 shown above.
>=20
> Doug Gilbert
>=20

Would update in next version. Would you continue reviewing patch 9/10 and 1=
0/10?

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/fa567e0b-00ca-76ad-f9e7-a554714f813c%40huawei.com.
