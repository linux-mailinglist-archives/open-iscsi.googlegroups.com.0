Return-Path: <open-iscsi+bncBC755V5RXMKBBPPSWHYQKGQEO3OXMPY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C711496D6
	for <lists+open-iscsi@lfdr.de>; Sat, 25 Jan 2020 18:22:07 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id a12sf2933907oto.8
        for <lists+open-iscsi@lfdr.de>; Sat, 25 Jan 2020 09:22:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579972926; cv=pass;
        d=google.com; s=arc-20160816;
        b=GmoWfw3Pr1N8xJEFC0xdLyz8zywyw1WqqHRLS/rypmWe1x5r9XMaiHhMdD0hfDWKq8
         9ap78OYl35kplCSGAWPRP3tpEvITG2VFX6bf0RC5Xpc/Tjd2r+8OWg8pd9IzMp9idT2q
         r0QK7x/Zm+PSsWFBI7do8KL8k69/e9ZHrw20CGDO7SjAYWgLxoIkl7Ur0Pv31eY14TCK
         pipMsUxSXp6jRxZMPvO2+01dLesm867bD6Nj3psrHZKpQN3sdgjPL174p8Jch5UAbY3w
         GJNB+fROSo4mS7tmxSyKePLr7nGhOU3b9ZRWjmAXZTDVZPBOsAfxj0azw0SV+aClDDGX
         javw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:references:to:cc
         :in-reply-to:date:subject:mime-version:message-id:from:sender
         :dkim-signature:dkim-signature;
        bh=oWX2pQ8KUpIG8uG/CuJ8FkPqHfT3hFaoE+3+ZPcBOTc=;
        b=G7j58WUgzMfHqZZgXLXnOTYguVCLjnZ+2dBfHqIQ73Cb2Bl5aXoqQ4WyEOKcJYMCZm
         nVxlk6jurj5zbOHmEgla15O2pSTyzaCFuUS4+WSp3YHoXUTus/tJaVwCi/GaAp2T1PO7
         McPgZPWqhD4gefbplSPkMkIqk0oJuXloAzrq8BxthLPBl7bjoBma9dtt0Ow0EUVpLEGQ
         3f2H6Q3Pd7Ar7M4QUqImzqmfSs8jNV6EO0UyXCYNkBoYKG/e0uQ35+PGWJJoo1zsPtDS
         k98ZI3XSIftZ6u1riK3B0GhcvASLy09nnENFqt7660vYmCgy8JS+HMnmPaEejfHmLj2l
         O3YQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I88QTzAT;
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oWX2pQ8KUpIG8uG/CuJ8FkPqHfT3hFaoE+3+ZPcBOTc=;
        b=lQhyCps0i7l6u5Ih3r0FfhicJLAKNQ4gqXXMA9zj127D2AwlQloWRtleBhdtGsYcle
         K3FvOzkHKhQ30Qvt0n7ftr3bmHO7gvXaQfu1pV/3EF0zjvnMgNDjOsLhcpLwNkz8b+RY
         a+HGEsPPPZGESU4YL4x67WMSbhuJy9rW8wyEeHKSryPCtgvZIRYYh0qXuZV5gwCFLgV6
         /aoeJrOpAFh1i0EsTdM6IGCmAxwCDIJBRfMU1ttivBJ4OmZ8Jw/GUyZKWqcylgMcOzb9
         VlGMLoJmxlNTv1dmRmkb5saSopi9XYubMCiagZk7hmdNZvpijDB/rSO1k+XD4NTVP0ty
         YWgg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oWX2pQ8KUpIG8uG/CuJ8FkPqHfT3hFaoE+3+ZPcBOTc=;
        b=kxr3hpbMN1CF+ca31jQGFmICChjA1J4t5zOHsorDtaBi9zFBIj5p7Z/b+SrSyzMxbw
         kR5Rk1YxQxMoYHG21BrJFE0xgySYtb7NjCzRDy/RIvUUpctJ7ad3UmQKXMs2fWlIdYay
         GMih2+7JNQhiucYVM/+EL/67Xzr8OuE26IkwmSE5L6RWnaIh3122E+8sJUKs3J+gJ3Gy
         p0u/gA77AEhjGeOvBpHvTmkRGmGyt0dZ+xen+Za+ktMAF+LVs5hkL0JyIaBnGDvnB71t
         D+OvLfvFiLDx61u+zaP2/YD606IzEwt1lrCoy7HqwNpKpCT4+dcQ2OEoqD6/ex0ix4bA
         WUXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oWX2pQ8KUpIG8uG/CuJ8FkPqHfT3hFaoE+3+ZPcBOTc=;
        b=UBs5E1giGn0UDmAeJKwTATPnr8Q7kjIM72N7mSOycOnUr/q9Tws38n+p23twak3th5
         t7lWFR1l1T8g2zSko1p+DIs/fCp/q91vwO4ixx2Cc5v4XPNW1H4q4sHsTVzRzRMoLdMl
         jAiTmT4qq5EBcEV0bf9Lo2qtNZSctxxnuUEzpa5essZB8qRmp1vKvTgeiTj/S7jQXQiJ
         yXcFfnpS5d5OvqVLeQ3SG8EZM/+lmM+gdiybvixAtsiqASrt1KOJv+TgK1EqJxt1C1K+
         WBxqjA5NuRU/g3JEVuz4fWprjvO0woBBTqNN+NoaQdlpHPfZe+1WPxjVwYtj3qRzQUJg
         Jl6Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWFsts/8BoZSJb4DstlOIXGQ+pNP8aW5H+hPg65tCff5QRrqHao
	AOTatONBHMLNkeNznowT3jg=
X-Google-Smtp-Source: APXvYqyCrZwncee1jTBzh0rp6clY/q1DdzNEWaF3VyBKGd9l+HGSNjcEWFiCvLDLOljphk161FKtzA==
X-Received: by 2002:a9d:7592:: with SMTP id s18mr7172498otk.130.1579972926126;
        Sat, 25 Jan 2020 09:22:06 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:895:: with SMTP id 143ls542117oii.1.gmail; Sat, 25 Jan
 2020 09:22:05 -0800 (PST)
X-Received: by 2002:a05:6808:244:: with SMTP id m4mr2925744oie.125.1579972925551;
        Sat, 25 Jan 2020 09:22:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579972925; cv=none;
        d=google.com; s=arc-20160816;
        b=QEkRf/6gyvxjqkZ2HOGDTydNf6K1pfQ0ZP5DNg+RyxE0IQprFq9dxH11+H/EnULbCT
         y0xqmrjYzEntjgWOsT59iTre3M+vXwoJ+gRnDwDZgEIwHvyT6BBcyJPvc4yzjViSKwRj
         hdPL7FvaEJLFU4LzLzaNAPseAzV4cAqGFAfjRao6TTP7AyfqfJhyh0uwhSOBw4GgJha4
         Nowm2t8thDOkhL6hgjYD0bbsZhwV4LfNyMnR0Sn0Lq1skZCwwieYJFZkxx8uI3qBeThR
         nyymQkzDEh1563Lq/MJX9r4heqfs+fOCgmACkpVz6q6y/oPhXMwkP/zc8wg5ZRXS6/B7
         LnxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:dkim-signature;
        bh=BlgxjpkHIBAQm24L/9AcCEftXVn7GHjvIjLSyVNUu+c=;
        b=s+DEw15f0CT2+3k04d2Y/SoJ5JT1IfKQ180COj6dcLMuMftYtexRVWbOdsrK4Ck5w9
         AEbctw0Mp4AnEhotHYwteXKwqqBR91zZIr/Mm/F9MiCWOUQ2IkyEA4/uuMBnCcWjaIrG
         28NW0rpasJcggEkRXm6urAtngMfdUG9YYV8a1nAVhOa0cw2Hv2Zt7Rq7IBcK52ZS8fBb
         /CXUirE+HV6q5ERqcqyfVIL/1QXII4KBGNJqccgvT2IV70qD+E/KihuYIScElONJPx05
         aHqni+i4HHaIkKjbqU+KY5hpgJsGd1J508sRAgeD+2yMsVSP+2+yz1w5BZBDiaBUJLLZ
         E58Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I88QTzAT;
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id 14si408559oty.3.2020.01.25.09.22.05
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jan 2020 09:22:05 -0800 (PST)
Received-SPF: pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id a6so2131265plm.3
        for <open-iscsi@googlegroups.com>; Sat, 25 Jan 2020 09:22:05 -0800 (PST)
X-Received: by 2002:a17:902:8604:: with SMTP id f4mr9970856plo.278.1579972924573;
        Sat, 25 Jan 2020 09:22:04 -0800 (PST)
Received: from ?IPv6:2601:1c0:5400:d::3? ([2601:1c0:5400:d::3])
        by smtp.gmail.com with ESMTPSA id v15sm10250724pju.15.2020.01.25.09.22.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Jan 2020 09:22:03 -0800 (PST)
From: Lee Duncan <leeman.duncan@gmail.com>
Message-Id: <F29720C3-86AC-407A-8255-9186E3AE0676@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_CFC8E9AD-EB1A-4509-A977-95646AFEB33F"
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [PATCH RESEND v4] iscsi: Perform connection failure entirely in
 kernel space
Date: Sat, 25 Jan 2020 09:22:02 -0800
In-Reply-To: <20200125061925.191601-1-krisman@collabora.com>
Cc: Lee Duncan <lduncan@suse.com>,
 martin.petersen@oracle.com,
 linux-scsi@vger.kernel.org,
 Bharath Ravi <rbharath@google.com>,
 kernel@collabora.com,
 Michael Christie <mchristi@redhat.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Dave Clausen <dclausen@google.com>,
 Nick Black <nlb@google.com>,
 Vaibhav Nagarnaik <vnagarnaik@google.com>,
 Anatol Pomazau <anatol@google.com>,
 Tahsin Erdogan <tahsin@google.com>,
 Frank Mayhar <fmayhar@google.com>,
 Junho Ryu <jayr@google.com>,
 Khazhismel Kumykov <khazhy@google.com>,
 Gabriel Krisman Bertazi <krisman@collabora.com>
To: open-iscsi <open-iscsi@googlegroups.com>
References: <20200125061925.191601-1-krisman@collabora.com>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=I88QTzAT;       spf=pass
 (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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


--Apple-Mail=_CFC8E9AD-EB1A-4509-A977-95646AFEB33F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Jan 24, 2020, at 10:19 PM, Gabriel Krisman Bertazi <krisman@collabora.co=
m> wrote:
>=20
> From: Bharath Ravi <rbharath@google.com>
>=20
> Hi Lee,
>=20
> Martin asked for you to re-review this patch before he applies it, since
> there was a small change from v3 after you acked it.  The change is that
> we started to protect the list_empty() verification with the spin lock
> on session destruction.
>=20
> For that reason, I dropped your reviewed-by.  Can you please take
> another look so we can have this merged?
>=20
> Thanks,

I=E2=80=99m sorry if it didn=E2=80=99t get through, but I sent a Reviewed-b=
y update and the end of last week.

I looked over the updates, and I said that they look good to me, and I said=
 please re-add my:

Reviewed-by: Lee Duncan <lduncan@suse.com <mailto:lduncan@suse.com>>


>=20
> -- >8 --=20
>=20
> Connection failure processing depends on a daemon being present to (at
> least) stop the connection and start recovery.  This is a problem on a
> multipath scenario, where if the daemon failed for whatever reason, the
> SCSI path is never marked as down, multipath won't perform the
> failover and IO to the device will be forever waiting for that
> connection to come back.
>=20
> This patch performs the connection failure entirely inside the kernel.
> This way, the failover can happen and pending IO can continue even if
> the daemon is dead. Once the daemon comes alive again, it can execute
> recovery procedures if applicable.
>=20
> Changes since v3:
>  - Protect list_empty with connlock on session destroy
>=20
> Changes since v2:
>  - Don't hold rx_mutex for too long at once
>=20
> Changes since v1:
>  - Remove module parameter.
>  - Always do kernel-side stop work.
>  - Block recovery timeout handler if system is dying.
>  - send a CONN_TERM stop if the system is dying.
>=20
> Cc: Mike Christie <mchristi@redhat.com>
> Cc: Lee Duncan <LDuncan@suse.com>
> Cc: Bart Van Assche <bvanassche@acm.org>
> Co-developed-by: Dave Clausen <dclausen@google.com>
> Signed-off-by: Dave Clausen <dclausen@google.com>
> Co-developed-by: Nick Black <nlb@google.com>
> Signed-off-by: Nick Black <nlb@google.com>
> Co-developed-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
> Signed-off-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
> Co-developed-by: Anatol Pomazau <anatol@google.com>
> Signed-off-by: Anatol Pomazau <anatol@google.com>
> Co-developed-by: Tahsin Erdogan <tahsin@google.com>
> Signed-off-by: Tahsin Erdogan <tahsin@google.com>
> Co-developed-by: Frank Mayhar <fmayhar@google.com>
> Signed-off-by: Frank Mayhar <fmayhar@google.com>
> Co-developed-by: Junho Ryu <jayr@google.com>
> Signed-off-by: Junho Ryu <jayr@google.com>
> Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
> Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
> Reviewed-by: Reviewed-by: Khazhismel Kumykov <khazhy@google.com>
> Signed-off-by: Bharath Ravi <rbharath@google.com>
> Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> ---
> drivers/scsi/scsi_transport_iscsi.c | 68 +++++++++++++++++++++++++++++
> include/scsi/scsi_transport_iscsi.h |  1 +
> 2 files changed, 69 insertions(+)
>=20
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_tran=
sport_iscsi.c
> index 271afea654e2..ba6cfaf71aef 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -86,6 +86,12 @@ struct iscsi_internal {
> 	struct transport_container session_cont;
> };
>=20
> +/* Worker to perform connection failure on unresponsive connections
> + * completely in kernel space.
> + */
> +static void stop_conn_work_fn(struct work_struct *work);
> +static DECLARE_WORK(stop_conn_work, stop_conn_work_fn);
> +
> static atomic_t iscsi_session_nr; /* sysfs session id for next new sessio=
n */
> static struct workqueue_struct *iscsi_eh_timer_workq;
>=20
> @@ -1611,6 +1617,7 @@ static DEFINE_MUTEX(rx_queue_mutex);
> static LIST_HEAD(sesslist);
> static DEFINE_SPINLOCK(sesslock);
> static LIST_HEAD(connlist);
> +static LIST_HEAD(connlist_err);
> static DEFINE_SPINLOCK(connlock);
>=20
> static uint32_t iscsi_conn_get_sid(struct iscsi_cls_conn *conn)
> @@ -2247,6 +2254,7 @@ iscsi_create_conn(struct iscsi_cls_session *session=
, int dd_size, uint32_t cid)
>=20
> 	mutex_init(&conn->ep_mutex);
> 	INIT_LIST_HEAD(&conn->conn_list);
> +	INIT_LIST_HEAD(&conn->conn_list_err);
> 	conn->transport =3D transport;
> 	conn->cid =3D cid;
>=20
> @@ -2293,6 +2301,7 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
>=20
> 	spin_lock_irqsave(&connlock, flags);
> 	list_del(&conn->conn_list);
> +	list_del(&conn->conn_list_err);
> 	spin_unlock_irqrestore(&connlock, flags);
>=20
> 	transport_unregister_device(&conn->dev);
> @@ -2407,6 +2416,51 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
> }
> EXPORT_SYMBOL_GPL(iscsi_offload_mesg);
>=20
> +static void stop_conn_work_fn(struct work_struct *work)
> +{
> +	struct iscsi_cls_conn *conn, *tmp;
> +	unsigned long flags;
> +	LIST_HEAD(recovery_list);
> +
> +	spin_lock_irqsave(&connlock, flags);
> +	if (list_empty(&connlist_err)) {
> +		spin_unlock_irqrestore(&connlock, flags);
> +		return;
> +	}
> +	list_splice_init(&connlist_err, &recovery_list);
> +	spin_unlock_irqrestore(&connlock, flags);
> +
> +	list_for_each_entry_safe(conn, tmp, &recovery_list, conn_list_err) {
> +		uint32_t sid =3D iscsi_conn_get_sid(conn);
> +		struct iscsi_cls_session *session;
> +
> +		mutex_lock(&rx_queue_mutex);
> +
> +		session =3D iscsi_session_lookup(sid);
> +		if (session) {
> +			if (system_state !=3D SYSTEM_RUNNING) {
> +				session->recovery_tmo =3D 0;
> +				conn->transport->stop_conn(conn,
> +							   STOP_CONN_TERM);
> +			} else {
> +				conn->transport->stop_conn(conn,
> +							   STOP_CONN_RECOVER);
> +			}
> +		}
> +
> +		list_del_init(&conn->conn_list_err);
> +
> +		mutex_unlock(&rx_queue_mutex);
> +
> +		/* we don't want to hold rx_queue_mutex for too long,
> +		 * for instance if many conns failed at the same time,
> +		 * since this stall other iscsi maintenance operations.
> +		 * Give other users a chance to proceed.
> +		 */
> +		cond_resched();
> +	}
> +}
> +
> void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err e=
rror)
> {
> 	struct nlmsghdr	*nlh;
> @@ -2414,6 +2468,12 @@ void iscsi_conn_error_event(struct iscsi_cls_conn =
*conn, enum iscsi_err error)
> 	struct iscsi_uevent *ev;
> 	struct iscsi_internal *priv;
> 	int len =3D nlmsg_total_size(sizeof(*ev));
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&connlock, flags);
> +	list_add(&conn->conn_list_err, &connlist_err);
> +	spin_unlock_irqrestore(&connlock, flags);
> +	queue_work(system_unbound_wq, &stop_conn_work);
>=20
> 	priv =3D iscsi_if_transport_lookup(conn->transport);
> 	if (!priv)
> @@ -2743,11 +2803,19 @@ static int
> iscsi_if_destroy_conn(struct iscsi_transport *transport, struct iscsi_uev=
ent *ev)
> {
> 	struct iscsi_cls_conn *conn;
> +	unsigned long flags;
>=20
> 	conn =3D iscsi_conn_lookup(ev->u.d_conn.sid, ev->u.d_conn.cid);
> 	if (!conn)
> 		return -EINVAL;
>=20
> +	spin_lock_irqsave(&connlock, flags);
> +	if (!list_empty(&conn->conn_list_err)) {
> +		spin_unlock_irqrestore(&connlock, flags);
> +		return -EAGAIN;
> +	}
> +	spin_unlock_irqrestore(&connlock, flags);
> +
> 	ISCSI_DBG_TRANS_CONN(conn, "Destroying transport conn\n");
> 	if (transport->destroy_conn)
> 		transport->destroy_conn(conn);
> diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_tran=
sport_iscsi.h
> index 325ae731d9ad..2129dc9e2dec 100644
> --- a/include/scsi/scsi_transport_iscsi.h
> +++ b/include/scsi/scsi_transport_iscsi.h
> @@ -190,6 +190,7 @@ extern void iscsi_ping_comp_event(uint32_t host_no,
>=20
> struct iscsi_cls_conn {
> 	struct list_head conn_list;	/* item in connlist */
> +	struct list_head conn_list_err;	/* item in connlist_err */
> 	void *dd_data;			/* LLD private data */
> 	struct iscsi_transport *transport;
> 	uint32_t cid;			/* connection id */
> --=20
> 2.25.0.rc2
>=20
> --=20
> You received this message because you are subscribed to a topic in the Go=
ogle Groups "open-iscsi" group.
> To unsubscribe from this topic, visit https://groups.google.com/d/topic/o=
pen-iscsi/SNd7Di-ZRao/unsubscribe.
> To unsubscribe from this group and all its topics, send an email to open-=
iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/open-iscsi/20200125061925.191601-1-krisman%40collabora.com.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/F29720C3-86AC-407A-8255-9186E3AE0676%40gmail.com.

--Apple-Mail=_CFC8E9AD-EB1A-4509-A977-95646AFEB33F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; line-break: after-white-space;" class=3D"">On Jan 24, 2020, at 10:19 =
PM, Gabriel Krisman Bertazi &lt;<a href=3D"mailto:krisman@collabora.com" cl=
ass=3D"">krisman@collabora.com</a>&gt; wrote:<br class=3D""><div><blockquot=
e type=3D"cite" class=3D""><br class=3D"Apple-interchange-newline"><div cla=
ss=3D""><div class=3D"">From: Bharath Ravi &lt;<a href=3D"mailto:rbharath@g=
oogle.com" class=3D"">rbharath@google.com</a>&gt;<br class=3D""><br class=
=3D"">Hi Lee,<br class=3D""><br class=3D"">Martin asked for you to re-revie=
w this patch before he applies it, since<br class=3D"">there was a small ch=
ange from v3 after you acked it. &nbsp;The change is that<br class=3D"">we =
started to protect the list_empty() verification with the spin lock<br clas=
s=3D"">on session destruction.<br class=3D""><br class=3D"">For that reason=
, I dropped your reviewed-by. &nbsp;Can you please take<br class=3D"">anoth=
er look so we can have this merged?<br class=3D""><br class=3D"">Thanks,<br=
 class=3D""></div></div></blockquote><div><br class=3D""></div>I=E2=80=99m =
sorry if it didn=E2=80=99t get through, but I sent a Reviewed-by update and=
 the end of last week.</div><div><br class=3D""></div><div>I looked over th=
e updates, and I said that they look good to me, and I said please re-add m=
y:</div><div><br class=3D""></div><div>Reviewed-by: Lee Duncan &lt;<a href=
=3D"mailto:lduncan@suse.com" class=3D"">lduncan@suse.com</a>&gt;</div><div>=
<br class=3D""></div><div><br class=3D""><blockquote type=3D"cite" class=3D=
""><div class=3D""><div class=3D""><br class=3D"">-- &gt;8 -- <br class=3D"=
"><br class=3D"">Connection failure processing depends on a daemon being pr=
esent to (at<br class=3D"">least) stop the connection and start recovery. &=
nbsp;This is a problem on a<br class=3D"">multipath scenario, where if the =
daemon failed for whatever reason, the<br class=3D"">SCSI path is never mar=
ked as down, multipath won't perform the<br class=3D"">failover and IO to t=
he device will be forever waiting for that<br class=3D"">connection to come=
 back.<br class=3D""><br class=3D"">This patch performs the connection fail=
ure entirely inside the kernel.<br class=3D"">This way, the failover can ha=
ppen and pending IO can continue even if<br class=3D"">the daemon is dead. =
Once the daemon comes alive again, it can execute<br class=3D"">recovery pr=
ocedures if applicable.<br class=3D""><br class=3D"">Changes since v3:<br c=
lass=3D""> &nbsp;- Protect list_empty with connlock on session destroy<br c=
lass=3D""><br class=3D"">Changes since v2:<br class=3D""> &nbsp;- Don't hol=
d rx_mutex for too long at once<br class=3D""><br class=3D"">Changes since =
v1:<br class=3D""> &nbsp;- Remove module parameter.<br class=3D""> &nbsp;- =
Always do kernel-side stop work.<br class=3D""> &nbsp;- Block recovery time=
out handler if system is dying.<br class=3D""> &nbsp;- send a CONN_TERM sto=
p if the system is dying.<br class=3D""><br class=3D"">Cc: Mike Christie &l=
t;<a href=3D"mailto:mchristi@redhat.com" class=3D"">mchristi@redhat.com</a>=
&gt;<br class=3D"">Cc: Lee Duncan &lt;<a href=3D"mailto:LDuncan@suse.com" c=
lass=3D"">LDuncan@suse.com</a>&gt;<br class=3D"">Cc: Bart Van Assche &lt;<a=
 href=3D"mailto:bvanassche@acm.org" class=3D"">bvanassche@acm.org</a>&gt;<b=
r class=3D"">Co-developed-by: Dave Clausen &lt;<a href=3D"mailto:dclausen@g=
oogle.com" class=3D"">dclausen@google.com</a>&gt;<br class=3D"">Signed-off-=
by: Dave Clausen &lt;<a href=3D"mailto:dclausen@google.com" class=3D"">dcla=
usen@google.com</a>&gt;<br class=3D"">Co-developed-by: Nick Black &lt;<a hr=
ef=3D"mailto:nlb@google.com" class=3D"">nlb@google.com</a>&gt;<br class=3D"=
">Signed-off-by: Nick Black &lt;<a href=3D"mailto:nlb@google.com" class=3D"=
">nlb@google.com</a>&gt;<br class=3D"">Co-developed-by: Vaibhav Nagarnaik &=
lt;<a href=3D"mailto:vnagarnaik@google.com" class=3D"">vnagarnaik@google.co=
m</a>&gt;<br class=3D"">Signed-off-by: Vaibhav Nagarnaik &lt;<a href=3D"mai=
lto:vnagarnaik@google.com" class=3D"">vnagarnaik@google.com</a>&gt;<br clas=
s=3D"">Co-developed-by: Anatol Pomazau &lt;<a href=3D"mailto:anatol@google.=
com" class=3D"">anatol@google.com</a>&gt;<br class=3D"">Signed-off-by: Anat=
ol Pomazau &lt;<a href=3D"mailto:anatol@google.com" class=3D"">anatol@googl=
e.com</a>&gt;<br class=3D"">Co-developed-by: Tahsin Erdogan &lt;<a href=3D"=
mailto:tahsin@google.com" class=3D"">tahsin@google.com</a>&gt;<br class=3D"=
">Signed-off-by: Tahsin Erdogan &lt;<a href=3D"mailto:tahsin@google.com" cl=
ass=3D"">tahsin@google.com</a>&gt;<br class=3D"">Co-developed-by: Frank May=
har &lt;<a href=3D"mailto:fmayhar@google.com" class=3D"">fmayhar@google.com=
</a>&gt;<br class=3D"">Signed-off-by: Frank Mayhar &lt;<a href=3D"mailto:fm=
ayhar@google.com" class=3D"">fmayhar@google.com</a>&gt;<br class=3D"">Co-de=
veloped-by: Junho Ryu &lt;<a href=3D"mailto:jayr@google.com" class=3D"">jay=
r@google.com</a>&gt;<br class=3D"">Signed-off-by: Junho Ryu &lt;<a href=3D"=
mailto:jayr@google.com" class=3D"">jayr@google.com</a>&gt;<br class=3D"">Co=
-developed-by: Khazhismel Kumykov &lt;<a href=3D"mailto:khazhy@google.com" =
class=3D"">khazhy@google.com</a>&gt;<br class=3D"">Signed-off-by: Khazhisme=
l Kumykov &lt;<a href=3D"mailto:khazhy@google.com" class=3D"">khazhy@google=
.com</a>&gt;<br class=3D"">Reviewed-by: Reviewed-by: Khazhismel Kumykov &lt=
;<a href=3D"mailto:khazhy@google.com" class=3D"">khazhy@google.com</a>&gt;<=
br class=3D"">Signed-off-by: Bharath Ravi &lt;<a href=3D"mailto:rbharath@go=
ogle.com" class=3D"">rbharath@google.com</a>&gt;<br class=3D"">Co-developed=
-by: Gabriel Krisman Bertazi &lt;<a href=3D"mailto:krisman@collabora.com" c=
lass=3D"">krisman@collabora.com</a>&gt;<br class=3D"">Signed-off-by: Gabrie=
l Krisman Bertazi &lt;<a href=3D"mailto:krisman@collabora.com" class=3D"">k=
risman@collabora.com</a>&gt;<br class=3D"">---<br class=3D""> drivers/scsi/=
scsi_transport_iscsi.c | 68 +++++++++++++++++++++++++++++<br class=3D""> in=
clude/scsi/scsi_transport_iscsi.h | &nbsp;1 +<br class=3D""> 2 files change=
d, 69 insertions(+)<br class=3D""><br class=3D"">diff --git a/drivers/scsi/=
scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c<br class=3D"">=
index 271afea654e2..ba6cfaf71aef 100644<br class=3D"">--- a/drivers/scsi/sc=
si_transport_iscsi.c<br class=3D"">+++ b/drivers/scsi/scsi_transport_iscsi.=
c<br class=3D"">@@ -86,6 +86,12 @@ struct iscsi_internal {<br class=3D""> <=
span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>struct tran=
sport_container session_cont;<br class=3D""> };<br class=3D""><br class=3D"=
">+/* Worker to perform connection failure on unresponsive connections<br c=
lass=3D"">+ * completely in kernel space.<br class=3D"">+ */<br class=3D"">=
+static void stop_conn_work_fn(struct work_struct *work);<br class=3D"">+st=
atic DECLARE_WORK(stop_conn_work, stop_conn_work_fn);<br class=3D"">+<br cl=
ass=3D""> static atomic_t iscsi_session_nr; /* sysfs session id for next ne=
w session */<br class=3D""> static struct workqueue_struct *iscsi_eh_timer_=
workq;<br class=3D""><br class=3D"">@@ -1611,6 +1617,7 @@ static DEFINE_MUT=
EX(rx_queue_mutex);<br class=3D""> static LIST_HEAD(sesslist);<br class=3D"=
"> static DEFINE_SPINLOCK(sesslock);<br class=3D""> static LIST_HEAD(connli=
st);<br class=3D"">+static LIST_HEAD(connlist_err);<br class=3D""> static D=
EFINE_SPINLOCK(connlock);<br class=3D""><br class=3D""> static uint32_t isc=
si_conn_get_sid(struct iscsi_cls_conn *conn)<br class=3D"">@@ -2247,6 +2254=
,7 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uin=
t32_t cid)<br class=3D""><br class=3D""> <span class=3D"Apple-tab-span" sty=
le=3D"white-space:pre">	</span>mutex_init(&amp;conn-&gt;ep_mutex);<br class=
=3D""> <span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>INI=
T_LIST_HEAD(&amp;conn-&gt;conn_list);<br class=3D"">+<span class=3D"Apple-t=
ab-span" style=3D"white-space:pre">	</span>INIT_LIST_HEAD(&amp;conn-&gt;con=
n_list_err);<br class=3D""> <span class=3D"Apple-tab-span" style=3D"white-s=
pace:pre">	</span>conn-&gt;transport =3D transport;<br class=3D""> <span cl=
ass=3D"Apple-tab-span" style=3D"white-space:pre">	</span>conn-&gt;cid =3D c=
id;<br class=3D""><br class=3D"">@@ -2293,6 +2301,7 @@ int iscsi_destroy_co=
nn(struct iscsi_cls_conn *conn)<br class=3D""><br class=3D""> <span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>spin_lock_irqsave(&am=
p;connlock, flags);<br class=3D""> <span class=3D"Apple-tab-span" style=3D"=
white-space:pre">	</span>list_del(&amp;conn-&gt;conn_list);<br class=3D"">+=
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>list_del(&=
amp;conn-&gt;conn_list_err);<br class=3D""> <span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>spin_unlock_irqrestore(&amp;connlock, fla=
gs);<br class=3D""><br class=3D""> <span class=3D"Apple-tab-span" style=3D"=
white-space:pre">	</span>transport_unregister_device(&amp;conn-&gt;dev);<br=
 class=3D"">@@ -2407,6 +2416,51 @@ int iscsi_offload_mesg(struct Scsi_Host =
*shost,<br class=3D""> }<br class=3D""> EXPORT_SYMBOL_GPL(iscsi_offload_mes=
g);<br class=3D""><br class=3D"">+static void stop_conn_work_fn(struct work=
_struct *work)<br class=3D"">+{<br class=3D"">+<span class=3D"Apple-tab-spa=
n" style=3D"white-space:pre">	</span>struct iscsi_cls_conn *conn, *tmp;<br =
class=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</spa=
n>unsigned long flags;<br class=3D"">+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>LIST_HEAD(recovery_list);<br class=3D"">+<br c=
lass=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
>spin_lock_irqsave(&amp;connlock, flags);<br class=3D"">+<span class=3D"App=
le-tab-span" style=3D"white-space:pre">	</span>if (list_empty(&amp;connlist=
_err)) {<br class=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space=
:pre">	</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</s=
pan>spin_unlock_irqrestore(&amp;connlock, flags);<br class=3D"">+<span clas=
s=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span class=3D"Apple=
-tab-span" style=3D"white-space:pre">	</span>return;<br class=3D"">+<span c=
lass=3D"Apple-tab-span" style=3D"white-space:pre">	</span>}<br class=3D"">+=
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>list_splic=
e_init(&amp;connlist_err, &amp;recovery_list);<br class=3D"">+<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>spin_unlock_irqrestor=
e(&amp;connlock, flags);<br class=3D"">+<br class=3D"">+<span class=3D"Appl=
e-tab-span" style=3D"white-space:pre">	</span>list_for_each_entry_safe(conn=
, tmp, &amp;recovery_list, conn_list_err) {<br class=3D"">+<span class=3D"A=
pple-tab-span" style=3D"white-space:pre">	</span><span class=3D"Apple-tab-s=
pan" style=3D"white-space:pre">	</span>uint32_t sid =3D iscsi_conn_get_sid(=
conn);<br class=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space:p=
re">	</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</spa=
n>struct iscsi_cls_session *session;<br class=3D"">+<br class=3D"">+<span c=
lass=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span class=3D"Ap=
ple-tab-span" style=3D"white-space:pre">	</span>mutex_lock(&amp;rx_queue_mu=
tex);<br class=3D"">+<br class=3D"">+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" style=3D"white-=
space:pre">	</span>session =3D iscsi_session_lookup(sid);<br class=3D"">+<s=
pan class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>if (session) {<br cla=
ss=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><=
span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>if (system_state !=3D=
 SYSTEM_RUNNING) {<br class=3D"">+<span class=3D"Apple-tab-span" style=3D"w=
hite-space:pre">	</span><span class=3D"Apple-tab-span" style=3D"white-space=
:pre">	</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</s=
pan><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>sessio=
n-&gt;recovery_tmo =3D 0;<br class=3D"">+<span class=3D"Apple-tab-span" sty=
le=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" style=3D"whit=
e-space:pre">	</span><span class=3D"Apple-tab-span" style=3D"white-space:pr=
e">	</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
>conn-&gt;transport-&gt;stop_conn(conn,<br class=3D"">+<span class=3D"Apple=
-tab-span" style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span"=
 style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" style=3D"=
white-space:pre">	</span><span class=3D"Apple-tab-span" style=3D"white-spac=
e:pre">	</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</=
span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span=
 class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> &nbsp;&nbsp;ST=
OP_CONN_TERM);<br class=3D"">+<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=
} else {<br class=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space=
:pre">	</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</s=
pan><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>conn-&gt;transpo=
rt-&gt;stop_conn(conn,<br class=3D"">+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" style=3D"white-=
space:pre">	</span><span class=3D"Apple-tab-span" style=3D"white-space:pre"=
>	</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><=
span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span class=3D"Apple-=
tab-span" style=3D"white-space:pre">	</span> &nbsp;&nbsp;STOP_CONN_RECOVER)=
;<br class=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><sp=
an class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>}<br class=3D=
"">+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>}<br class=3D"">=
+<br class=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>lis=
t_del_init(&amp;conn-&gt;conn_list_err);<br class=3D"">+<br class=3D"">+<sp=
an class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mutex_unlock(&amp;rx_=
queue_mutex);<br class=3D"">+<br class=3D"">+<span class=3D"Apple-tab-span"=
 style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" style=3D"=
white-space:pre">	</span>/* we don't want to hold rx_queue_mutex for too lo=
ng,<br class=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space:pre"=
>	</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> =
* for instance if many conns failed at the same time,<br class=3D"">+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span class=3D"A=
pple-tab-span" style=3D"white-space:pre">	</span> * since this stall other =
iscsi maintenance operations.<br class=3D"">+<span class=3D"Apple-tab-span"=
 style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" style=3D"=
white-space:pre">	</span> * Give other users a chance to proceed.<br class=
=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><sp=
an class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> */<br class=
=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><sp=
an class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>cond_resched(=
);<br class=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>}<br class=3D"">+}<br class=3D"">+<br class=3D""> void iscsi_conn_e=
rror_event(struct iscsi_cls_conn *conn, enum iscsi_err error)<br class=3D""=
> {<br class=3D""> <span class=3D"Apple-tab-span" style=3D"white-space:pre"=
>	</span>struct nlmsghdr<span class=3D"Apple-tab-span" style=3D"white-space=
:pre">	</span>*nlh;<br class=3D"">@@ -2414,6 +2468,12 @@ void iscsi_conn_er=
ror_event(struct iscsi_cls_conn *conn, enum iscsi_err error)<br class=3D"">=
 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>struct is=
csi_uevent *ev;<br class=3D""> <span class=3D"Apple-tab-span" style=3D"whit=
e-space:pre">	</span>struct iscsi_internal *priv;<br class=3D""> <span clas=
s=3D"Apple-tab-span" style=3D"white-space:pre">	</span>int len =3D nlmsg_to=
tal_size(sizeof(*ev));<br class=3D"">+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>unsigned long flags;<br class=3D"">+<br class=
=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>spi=
n_lock_irqsave(&amp;connlock, flags);<br class=3D"">+<span class=3D"Apple-t=
ab-span" style=3D"white-space:pre">	</span>list_add(&amp;conn-&gt;conn_list=
_err, &amp;connlist_err);<br class=3D"">+<span class=3D"Apple-tab-span" sty=
le=3D"white-space:pre">	</span>spin_unlock_irqrestore(&amp;connlock, flags)=
;<br class=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>queue_work(system_unbound_wq, &amp;stop_conn_work);<br class=3D""><b=
r class=3D""> <span class=3D"Apple-tab-span" style=3D"white-space:pre">	</s=
pan>priv =3D iscsi_if_transport_lookup(conn-&gt;transport);<br class=3D""> =
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>if (!priv)=
<br class=3D"">@@ -2743,11 +2803,19 @@ static int<br class=3D""> iscsi_if_d=
estroy_conn(struct iscsi_transport *transport, struct iscsi_uevent *ev)<br =
class=3D""> {<br class=3D""> <span class=3D"Apple-tab-span" style=3D"white-=
space:pre">	</span>struct iscsi_cls_conn *conn;<br class=3D"">+<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>unsigned long flags;<=
br class=3D""><br class=3D""> <span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>conn =3D iscsi_conn_lookup(ev-&gt;u.d_conn.sid, ev-&gt;=
u.d_conn.cid);<br class=3D""> <span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>if (!conn)<br class=3D""> <span class=3D"Apple-tab-span=
" style=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" style=3D=
"white-space:pre">	</span>return -EINVAL;<br class=3D""><br class=3D"">+<sp=
an class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>spin_lock_irq=
save(&amp;connlock, flags);<br class=3D"">+<span class=3D"Apple-tab-span" s=
tyle=3D"white-space:pre">	</span>if (!list_empty(&amp;conn-&gt;conn_list_er=
r)) {<br class=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space:pr=
e">	</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
>spin_unlock_irqrestore(&amp;connlock, flags);<br class=3D"">+<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span><span class=3D"Apple-=
tab-span" style=3D"white-space:pre">	</span>return -EAGAIN;<br class=3D"">+=
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>}<br class=
=3D"">+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>spi=
n_unlock_irqrestore(&amp;connlock, flags);<br class=3D"">+<br class=3D""> <=
span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>ISCSI_DBG_T=
RANS_CONN(conn, "Destroying transport conn\n");<br class=3D""> <span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>if (transport-&gt;des=
troy_conn)<br class=3D""> <span class=3D"Apple-tab-span" style=3D"white-spa=
ce:pre">	</span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	<=
/span>transport-&gt;destroy_conn(conn);<br class=3D"">diff --git a/include/=
scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h<br class=
=3D"">index 325ae731d9ad..2129dc9e2dec 100644<br class=3D"">--- a/include/s=
csi/scsi_transport_iscsi.h<br class=3D"">+++ b/include/scsi/scsi_transport_=
iscsi.h<br class=3D"">@@ -190,6 +190,7 @@ extern void iscsi_ping_comp_event=
(uint32_t host_no,<br class=3D""><br class=3D""> struct iscsi_cls_conn {<br=
 class=3D""> <span class=3D"Apple-tab-span" style=3D"white-space:pre">	</sp=
an>struct list_head conn_list;<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* item in connlist */<br class=3D"">+<span class=3D"Ap=
ple-tab-span" style=3D"white-space:pre">	</span>struct list_head conn_list_=
err;<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* ite=
m in connlist_err */<br class=3D""> <span class=3D"Apple-tab-span" style=3D=
"white-space:pre">	</span>void *dd_data;<span class=3D"Apple-tab-span" styl=
e=3D"white-space:pre">	</span><span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>/* LLD private data */<br class=3D""> <span class=3D"Apple-tab-sp=
an" style=3D"white-space:pre">	</span>struct iscsi_transport *transport;<br=
 class=3D""> <span class=3D"Apple-tab-span" style=3D"white-space:pre">	</sp=
an>uint32_t cid;<span class=3D"Apple-tab-span" style=3D"white-space:pre">	<=
/span><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><spa=
n class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* connection =
id */<br class=3D"">-- <br class=3D"">2.25.0.rc2<br class=3D""><br class=3D=
"">-- <br class=3D"">You received this message because you are subscribed t=
o a topic in the Google Groups "open-iscsi" group.<br class=3D"">To unsubsc=
ribe from this topic, visit <a href=3D"https://groups.google.com/d/topic/op=
en-iscsi/SNd7Di-ZRao/unsubscribe" class=3D"">https://groups.google.com/d/to=
pic/open-iscsi/SNd7Di-ZRao/unsubscribe</a>.<br class=3D"">To unsubscribe fr=
om this group and all its topics, send an email to <a href=3D"mailto:open-i=
scsi+unsubscribe@googlegroups.com" class=3D"">open-iscsi+unsubscribe@google=
groups.com</a>.<br class=3D"">To view this discussion on the web visit <a h=
ref=3D"https://groups.google.com/d/msgid/open-iscsi/20200125061925.191601-1=
-krisman%40collabora.com" class=3D"">https://groups.google.com/d/msgid/open=
-iscsi/20200125061925.191601-1-krisman%40collabora.com</a>.<br class=3D""><=
/div></div></blockquote></div><br class=3D""></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/F29720C3-86AC-407A-8255-9186E3AE0676%40gmail.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/open-=
iscsi/F29720C3-86AC-407A-8255-9186E3AE0676%40gmail.com</a>.<br />

--Apple-Mail=_CFC8E9AD-EB1A-4509-A977-95646AFEB33F--
