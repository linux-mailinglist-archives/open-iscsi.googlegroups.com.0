Return-Path: <open-iscsi+bncBC63XVGIQQLRBC7S6GEQMGQEYVAD7TI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 272664075F0
	for <lists+open-iscsi@lfdr.de>; Sat, 11 Sep 2021 11:38:21 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id r206-20020a6276d7000000b004365c6064fbsf2836161pfc.5
        for <lists+open-iscsi@lfdr.de>; Sat, 11 Sep 2021 02:38:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631353099; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lg2DpvIjR7W3RLbRCLdxMiE2oX81nhug0Z9VMSbUPt6rqDP9J0OyJGPmyQNJHNVODd
         XSEtRjdxcq7Mh8OeHBRBmwjgih7CGjV9mpHhnduJq8dgQw6fbxDKNPM41sMA4SJDudVi
         b8hD5NshnAouf1Dx6rI+ASAGSvdJ1/Ywycus1Hp4BAm8nUK7B368OSeXGBB3dKxxoLf+
         l9jesRMhiIRvscy/jHuxaeVBJJB9wRtBNe0z0TB4e4UNAMixCHOqrL0Oe/a+WlHmmeM4
         nnC34T9F7sZMdhQ3ORx7QvMyUFn9TJnRK3bLg6e4luCGCVoNVf6odSRwhHB4YJn8lq1T
         EGAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:sender:dkim-signature;
        bh=DcVZNNAABQAjijG2NNlO7bicbumyj0d7I9N1aUDFqS8=;
        b=d+5NkmJDf38rBeychxCBv2l2G/jbqpf9IWVW+xENS0hcjyAVAqcUPsbyfva2c4YZV1
         3fLgHJiAs6hzR1h/xk3/vCmyA83ei42GyYfpf9kMVK6wqiuyOIe6Bs4PL+y9f0AkjD39
         SbuDFr/YZzDWcOUwrC/+aYoH+7jWTuF5VFPh5iG9oXvxV69vuE6ey3Wa4tYMvvzMszj5
         FHzf1v4lOevJToYO5jwIoGMQaDcA1gpJLojqu3EmZypwOoCUTBrJm/oiSjLaWhB0b22m
         8r2c2XivQ1VKh3Te3pa44P3K2HrDIJerm6q6fNdTHumG90QDsKP9JGrb/Nm78iySd3/8
         NkOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DcVZNNAABQAjijG2NNlO7bicbumyj0d7I9N1aUDFqS8=;
        b=AGznZLr4ZZLjIb0plxNd1K/RNe1OrKoksdRC33I7FZaiFY2UtKUkcuSsbOYubTitV9
         egnxknvXK9yXZsVUlgwYtaHp/xJiHPqcAIPCues1rv2OhkM9jOmmNKKukKqMoqnrG1kV
         PNw/tltK+ja+QYO/3pHBwlAs0H8Gq75mggD8cXGizALjayagu47XJ0VHHWpLRGIQcw6T
         Q3jYf9ux9NQ7kEkVsL8rHKHla3EUHdP3MeDALP0eJtuyfY4mreu/er9LSRLCeSqZ+kyc
         61fx05T1Ot5EZus/Lzfvp++axtR4TsJBxhDuYnBlRAFMztffyMm0V4044S5TqOpJeQ2F
         llKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DcVZNNAABQAjijG2NNlO7bicbumyj0d7I9N1aUDFqS8=;
        b=ZWt6LOCBCOk2fHN6UuMLJiWBSQU8+KBt1dtONECd03T7IHOXi1jFcfc2M+zAqjNNHj
         I2WPhheWKcYrwK+QGSB8wD1NQQxG5z1duLc1TwGQXIPqq+PPzLh77NsYBexnoCf2MiTO
         5dwHEHc0BycvAHHsVSLifQrW7j6JOtwZLEoXmZTRruOBIDzwbQa5Qn91OaXLSfFOpAI/
         /huxsH7yMHaHkrRmWzPhum3BkmFO/bVHbw+jpJmv07FaOBRNmk74H+8SJ+oJo0/ubI6g
         RavVGlXoDSSzOBst//S/+a3X0wdjSJy9NZsgjNH4whqen6SkHbz2eRRPDphMmSPDEKEn
         d8Rg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5338CRXc+xU8yB0FBLUeGbgxUZ4tQR7dSf/YnEHIV1UBaXlP1bmn
	DYFdpcNkAfsPcZkfTvZ/hsM=
X-Google-Smtp-Source: ABdhPJzC/qZJseNFk1f3GV3T3inuGlw/FDaTBIhxvq3eJHlRQYADak5ulXSpkE7fYKKhAx0eOUux3A==
X-Received: by 2002:a63:3d4a:: with SMTP id k71mr1807272pga.276.1631353099661;
        Sat, 11 Sep 2021 02:38:19 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90b:4c92:: with SMTP id my18ls602177pjb.3.gmail; Sat, 11
 Sep 2021 02:38:19 -0700 (PDT)
X-Received: by 2002:a17:902:ce8a:b0:13a:130c:e07f with SMTP id f10-20020a170902ce8a00b0013a130ce07fmr1725204plg.69.1631353099029;
        Sat, 11 Sep 2021 02:38:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631353099; cv=none;
        d=google.com; s=arc-20160816;
        b=Z0P6SNVGxSd/Ea0avi4r040iE6RJLpVjGarqqNG7Xq+AWiWC4Y/gZ6T+RC/G4tln+/
         cI8AOQilV2ZTjHw10DZKzOHS4hX0eQc576ZgIn9JOZwyNnoGLKZ4Eba8NWSuo5+T4ppy
         gI8c8CyzmSA77QYt8TxVA4CWBQk932cWr8dZHwY9s9IXBhCHjApGY5TuSJVI1X8BUNIX
         fhdNpo1Sl4u6a1uhiCmPWpSGu+htfTvQgYAkFXYSYHa9GvLEo9Hk6ZpImGUxgBeS4p6x
         4L0jLILuETGsfli8gBqrAWR2bkSoVuM2HvuDzD13oySZ+/Iu4odEVSOIvmevKVr0AI/B
         0ecg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject;
        bh=bOuePNN6pheSEGLzPVnsBIAYYawDy133sOVv99jUNQo=;
        b=nidKyVWNGm+GwHKjFxJWk+RcO642bE+NCSIOprY9hgPA9CYDRd7IxsWEYeKkMGUWmY
         Mh7PlK1T6M1muhmg1X+Hr2XidRRtLqDHl8YToKF2WFONcCyYJBk5sepPztNwVOPeTcp1
         J5rBaMs69M2S3GMlLdwZ6c0m/ebohgljtKfPHTpvLDTWypAFYjnmEoBlhMrsUiDA02Om
         W4zKKXpQe/3L0sJShGrFFdc4sClTbFYecryKOV4FbBKSNRjyU2egK32GZJZIFVoZcEyN
         E7F8/tMikZXFHVNxJazVWjlRptQleni9OL1N8T8C1yOAJ/m7v5gpfVe1yWaMGzvq232r
         qbBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
Received: from mail-m17642.qiye.163.com (mail-m17642.qiye.163.com. [59.111.176.42])
        by gmr-mx.google.com with ESMTPS id r14si122600pgv.3.2021.09.11.02.38.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Sep 2021 02:38:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) client-ip=59.111.176.42;
Received: from 2CD-RMPB.local (unknown [113.116.176.115])
	by mail-m17642.qiye.163.com (Hmail) with ESMTPA id E3024220121;
	Sat, 11 Sep 2021 17:37:04 +0800 (CST)
Subject: Re: [PATCH 1/3] scsi: libiscsi: move init ehwait to
 iscsi_session_setup()
To: Mike Christie <michael.christie@oracle.com>, lduncan@suse.com,
 cleech@redhat.com, jejb@linux.ibm.com, martin.petersen@oracle.com,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20210910010220.24073-1-dinghui@sangfor.com.cn>
 <20210910010220.24073-2-dinghui@sangfor.com.cn>
 <03817f8e-8fed-6e7a-e76f-8608f8cfd979@oracle.com>
From: Ding Hui <dinghui@sangfor.com.cn>
Message-ID: <486018fb-edf9-1f58-d911-ca7c5e9451e2@sangfor.com.cn>
Date: Sat, 11 Sep 2021 17:37:04 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:78.0)
 Gecko/20100101 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <03817f8e-8fed-6e7a-e76f-8608f8cfd979@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
	kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRpOTU1WTENJSE8ZSx1KTR
	ofVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Myo6Kio*DT4TOBw6GU0*Dxo#
	ETowFDpVSlVKTUhKSE5IS0lOTktCVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
	QVlKSkhVSkpNVUpMTVVKSk5ZV1kIAVlBSE1PSTcG
X-HM-Tid: 0a7bd437b28fd998kuwse3024220121
X-Original-Sender: dinghui@sangfor.com.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as
 permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
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

On 2021/9/11 12:25 =E4=B8=8A=E5=8D=88, Mike Christie wrote:
> On 9/9/21 8:02 PM, Ding Hui wrote:
>> commit ec29d0ac29be ("scsi: iscsi: Fix conn use after free during
>> resets") move member ehwait from conn to session, but left init ehwait
>> in iscsi_conn_setup().
>>
>> Due to one session can be binded by multi conns, the conn after the
>=20
> A session can only have 1 conn. There is some code that makes it look
> like we can do multiple conns or swap the single conn, but it was never
> fully implemented/supported upstream.
>=20
> However, I like the patch. The init should be done in iscsi_session_setup=
,
> so could you fix up the commit, so it's correct?
>=20

Thanks=EF=BC=8CI'll update the commit log and send v2 1/3.

>> first will reinit the session->ehwait, move init ehwait to
>> iscsi_session_setup() to fix it.
>>
>> Fixes: ec29d0ac29be ("scsi: iscsi: Fix conn use after free during resets=
")
>> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
>> ---
>>   drivers/scsi/libiscsi.c | 3 +--
>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
>> index 4683c183e9d4..712a45368385 100644
>> --- a/drivers/scsi/libiscsi.c
>> +++ b/drivers/scsi/libiscsi.c
>> @@ -2947,6 +2947,7 @@ iscsi_session_setup(struct iscsi_transport *iscsit=
, struct Scsi_Host *shost,
>>   	session->tmf_state =3D TMF_INITIAL;
>>   	timer_setup(&session->tmf_timer, iscsi_tmf_timedout, 0);
>>   	mutex_init(&session->eh_mutex);
>> +	init_waitqueue_head(&session->ehwait);
>>  =20
>>   	spin_lock_init(&session->frwd_lock);
>>   	spin_lock_init(&session->back_lock);
>> @@ -3074,8 +3075,6 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_ses=
sion, int dd_size,
>>   		goto login_task_data_alloc_fail;
>>   	conn->login_task->data =3D conn->data =3D data;
>>  =20
>> -	init_waitqueue_head(&session->ehwait);
>> -
>>   	return cls_conn;
>>  =20
>>   login_task_data_alloc_fail:
>>
>=20


--=20
Thanks,
-dinghui

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/486018fb-edf9-1f58-d911-ca7c5e9451e2%40sangfor.com.cn.
