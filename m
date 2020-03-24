Return-Path: <open-iscsi+bncBDO7B5X3UIBBBUP343ZQKGQESETPY6Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3811C1906F1
	for <lists+open-iscsi@lfdr.de>; Tue, 24 Mar 2020 08:59:15 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id d10sf1768888pjz.5
        for <lists+open-iscsi@lfdr.de>; Tue, 24 Mar 2020 00:59:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585036753; cv=pass;
        d=google.com; s=arc-20160816;
        b=WJWRpHP4ekygMyNDhbQnMiZIYQgKO8BTcUirzm9VKnyMeQ+JxeT2pnrYfqqFbCVIlq
         kT4EI4ZZfrP8CiO3PcjXzgfVjUlKdkrPD34lQwXy+isDhp9zVxZW4z6RM86PgPRkjaQ1
         RvTOzEJvxwLU5htwOmyCi/kFM3NO7IzTcdoUGoOH8aE/po1bMo4OvR2gbQy99Tuc9JH6
         hf+t4OM0Q/KQnsf8P7gI/9nHrsy+F3qgjVwwvvirtsXvp8UR68gSY+OAQC09uiIqe2UH
         gOSEtfxy2gEGmsim7kMh7fNxu42kkVEJreNCQmf35/jWniwdixTe5xxCZFzKAy8XpSsb
         B5JQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :content-transfer-encoding:mime-version:user-agent:date:message-id
         :subject:from:to:sender:dkim-signature;
        bh=yB8x1SbEsrEYSXw/qGwwn6K6qzhaxThwe40uCO3p+do=;
        b=KDTc/cPE2uFxX6GQDFEWXh9ndDtay0AGSk7Vmnc2O26iprqo+i3gzUqxGUiOQOL1dA
         Zxq/Txx4RZMyKfJ2uZFHrRjkcICoSyrfRwhrmxK29Zc/qsCOL8kYdZcGfYXSpfJgv0HV
         K+RpROp2Y1n2qYWjn6oTMRwQ269ucJ9SB1MQEhWRUh7KUQKnFir2GBCex1U/cySE4Uc/
         hgi0MxpChkvou+4xgBgWpY1DyaoWLxRm1WxhCJBu9p4GAvZboW04b5TMAw6Hvuv6XzMo
         /frJUPed0f+R1sgsJFcgyfpLHpCT57cI2RFTYmbEzQasfmPuNS3136O7gARk6y7aE7C8
         QZaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=yB8x1SbEsrEYSXw/qGwwn6K6qzhaxThwe40uCO3p+do=;
        b=B3RPjmc3EerpdiabISOAobLShIZyZbrj+S8RizPgTKV+ifScEl/JETrwhOq2306DlR
         yKM82oDUyAkdeTapx2Weh5XlOPp9O0Ua9UktHLPYeSq94rdDYwsddV7+ayMFiX+Fqj5N
         g8lh85PX1EqJuRKacRcq9qUz+5JDNVYsSnUQXq/g4h988oOeIGVvIibLBbH5MM8W5ekl
         WLJZauS9dyoCbkHyhGblA1K5jktwxlqvYWLYVjQ9yVFnBdbVOZw2CVuuO/iz/fybej/O
         4JjTfJdlUm3p+M0EBX85ZYl27CJKYLimxHSb0a0ZAHeJaBVmudRTlh4DX9xcAK/LzX3O
         k9tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:from:subject:message-id:date
         :user-agent:mime-version:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yB8x1SbEsrEYSXw/qGwwn6K6qzhaxThwe40uCO3p+do=;
        b=sYvuAfxLTkjapN1kMxK/pEN3ooO14IK8ZH9WwIQqVd5ZVg83BRNH+I/JPKEBShMGcf
         b+lkMdGGgrc6tQXuPjaC8OgNtVKMxNBX7sVyn4SdjxnZ9hGMflaONT3zfLkPCZV4IM5x
         nmGxQS1h0v4VexRubnb8FxFZ8knRKmIsXe4J/aykfo61SczpDVgkITBimmcufdVTwUnB
         Mhup6S0iFGWJoDlsCTr79Ka360gNywrSVRlaINoqXxOtCIb8xH/BimaVeztRZM/ygPR/
         TL4snX5iCZS6ZnLWymA/kgj+lbgK2kvYze9D+cCrLr0xJRZGmBnFxsujFWJj0+oBsJ7n
         KPhw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ3J1tC0XBwsl6lkuDzl9baPCX1TVbtc+dJGYm4Px7MaxYDIhLvD
	cAlxO6+AGneUr6eExjYKTMc=
X-Google-Smtp-Source: ADFU+vtRfxt5KMpLxwdu75biqFSzJXUX5Bhm1MOOwEfiEkb551f22xvt/v4ItoOX4mOsxO5EdXoCLA==
X-Received: by 2002:a17:90a:e289:: with SMTP id d9mr3765205pjz.172.1585036753706;
        Tue, 24 Mar 2020 00:59:13 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:df41:: with SMTP id h1ls8744946pgj.8.gmail; Tue, 24 Mar
 2020 00:59:13 -0700 (PDT)
X-Received: by 2002:a62:7cc9:: with SMTP id x192mr29860582pfc.176.1585036753239;
        Tue, 24 Mar 2020 00:59:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585036753; cv=none;
        d=google.com; s=arc-20160816;
        b=dPCPqhFIztymn690mKQWnLA91RckpESorA+lAb6Kji7RVhm8efMPa65A0uH+viH7OL
         VOK2rDXlI9oMK+iMZxFKp/OcfX3F8lVjxV1fBQzCQzRmn54NwPoKyqKHLA6SXH0d2Gvd
         sbGniYnq9tX1qdt/H7IVvzVldAfbPbZn/QS1pt14Gt+S9UQfsQk1UawhYuTBpdrsEwEJ
         TOuuEohwyPeOV/YP4NuRS62H6GYIPdV5Yx08hXUG9e+8UoGoorx1rqqaGZHkEUo8+ukR
         DDBH70KqQ8kQ/n8rokx45tJlxoKmgrSJVyrSpKmDmqUw/lsMQK7aIf3h8eeLQMlA2/mm
         bXCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:mime-version:user-agent
         :date:message-id:subject:from:to;
        bh=isJACOLGjEHnN6F3gntO0/xVeFQTTaY+SM/WHlHRU20=;
        b=Y9v+j9vo791n17MyXq9SwXcEM6bN0l7ku3keoTEtjSj1+2wayDwxkliUBbYhwgR+wI
         C6PYQai/SwbYqFImDDLgavIxactx/1gvJrjfBJAdUPTxMEoD+Z0aNlgH2OycixOoAlLJ
         epehisA/pNGih5zgxpONVTIGcxK/OIHaZV0rS4WdArBNVPnzzsAnW8QBvokBDWHDLlL0
         wTxjSHshGhEk5iDpNYK/RQxWe81ItJXaKPeIAeQ4J4Mm28hhxZeTgSNNloTWQQP5tyWF
         rMbj1wFttqrGAvkBce4EKyr8VJcv1Zc5wBdTn4dMfeW5UvWKnfNvXQLVn2TzME8Tzfzo
         NBhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id 185si675022pgh.3.2020.03.24.00.59.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 00:59:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 6FFC32BC9E3E2CCB20DC;
	Tue, 24 Mar 2020 15:59:11 +0800 (CST)
Received: from [10.173.221.252] (10.173.221.252) by smtp.huawei.com
 (10.3.19.208) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 24 Mar
 2020 15:59:00 +0800
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James
 E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, liuzhiqiang <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>
From: Wu Bo <wubo40@huawei.com>
Subject: [PATCH] iscsi:report unbind session event when the target has been
 removed
Message-ID: <7cce97f2-4dab-5105-a477-8869d5a4f150@huawei.com>
Date: Tue, 24 Mar 2020 15:58:50 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Originating-IP: [10.173.221.252]
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.35 as
 permitted sender) smtp.mailfrom=wubo40@huawei.com
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

The daemon is restarted or crashed while logging out of a session.
The unbind session event sent by the kernel is not be processed or be lost.
When the daemon runs again, the session will never be able to logout.

After executing the logout again, the daemon is waiting for the unbind=20
event message.
The kernel status has been logged out and the event will not be sent again.

#iscsiadm -m node iqn.xxx -p xx.xx.xx.xx -u &
#service iscsid restart

when iscsid restart done. logout session again report error:
#iscsiadm -m node iqn.xxxxx -p xx.xx.xx.xx -u
Logging out of session [sid: 6, target: iqn.xxxxx, portal:=20
xx.xx.xx.xx,3260]
iscsiadm: Could not logout of [sid: 6, target: iscsiadm -m node=20
iqn.xxxxx, portal: xx.xx.xx.xx,3260].
iscsiadm: initiator reported error (9 - internal error)
iscsiadm: Could not logout of all requested sessions

Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 =C2=A0drivers/scsi/scsi_transport_iscsi.c | 4 +++-
 =C2=A01 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c=20
b/drivers/scsi/scsi_transport_iscsi.c
index dfc726f..443ace0 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2012,7 +2012,7 @@ static void __iscsi_unbind_session(struct=20
work_struct *work)
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (session->target_id =3D=3D I=
SCSI_MAX_TARGET) {
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 spin_unlock_irqrestore(&session->lock, flags);
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 mutex_unlock(&ihost->mutex);
-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 return;
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 goto unbind_session_exit;
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }

 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 target_id =3D session->target_i=
d;
@@ -2024,6 +2024,8 @@ static void __iscsi_unbind_session(struct=20
work_struct *work)
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 ida_simple_remove(&iscsi_sess_ida, target_id);

 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 scsi_remove_target(&session->de=
v);
+
+unbind_session_exit:
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 iscsi_session_event(session, IS=
CSI_KEVENT_UNBIND_SESSION);
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ISCSI_DBG_TRANS_SESSION(session=
, "Completed target removal\n");
 =C2=A0}
--=20
1.8.3.1

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/7cce97f2-4dab-5105-a477-8869d5a4f150%40huawei.com.
